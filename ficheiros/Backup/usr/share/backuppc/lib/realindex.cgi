#!/usr/bin/perl
#============================================================= -*-perl-*-w
#
# BackupPC_Admin: Apache/CGI interface for BackupPC.
#
# DESCRIPTION
#   BackupPC_Admin provides a flexible web interface for BackupPC.
#   It is a CGI script that runs under Apache.
#
#   It requires that Apache pass in $ENV{SCRIPT_NAME} and
#   $ENV{REMOTE_USER}. The latter requires .ht_access style
#   authentication. Replace the code below if you are using some other
#   type of authentication, and have a different way of getting the
#   user name.
#
#   Also, this script needs to run as the BackupPC user.  To accomplish
#   this the script is typically installed as setuid to the BackupPC user,
#   or it can run under mod_perl with httpd running as the BackupPC user.
#
# AUTHOR
#   Craig Barratt  <cbarratt@users.sourceforge.net>
#
# COPYRIGHT
#   Copyright (C) 2001-2017  Craig Barratt
#
#   This program is free software; you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation; either version 2 of the License, or
#   (at your option) any later version.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with this program; if not, write to the Free Software
#   Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
#
#========================================================================
#
# Version 3.3.2, released 25 Jan 2017.
#
# See http://backuppc.sourceforge.net.
#
#========================================================================

use strict;
no  utf8;
use CGI;
use CGI::Carp qw(fatalsToBrowser);
use lib "/usr/share/backuppc/lib";

use BackupPC::Lib;
use BackupPC::CGI::Lib qw(:all);

BackupPC::CGI::Lib::NewRequest;

my %ActionDispatch = (
    "summary"             	 => "Summary",
    "Start_Incr_Backup"          => "StartStopBackup",
    "Start_Full_Backup"          => "StartStopBackup",
    "Stop_Dequeue_Backup"        => "StartStopBackup",
    "Stop_Dequeue_Archive"       => "StartStopBackup",
    "queue"               	 => "Queue",
    "view"                	 => "View",
    "LOGlist"             	 => "LOGlist",
    "emailSummary"        	 => "EmailSummary",
    "browse"              	 => "Browse",
    "dirHistory"              	 => "DirHistory",
    "Restore"           	 => "Restore",
    "RestoreFile"         	 => "RestoreFile",
    "hostInfo"		       	 => "HostInfo",
    "generalInfo"         	 => "GeneralInfo",
    "restoreInfo"         	 => "RestoreInfo",
    "archiveInfo"         	 => "ArchiveInfo",
    "Start_Archive"              => "Archive",
    "Archive"                    => "Archive",
    "Reload"                     => "ReloadServer",
    "startServer"                => "StartServer",
    "Stop"                       => "StopServer",
    "adminOpts"                  => "AdminOptions",
    "editConfig"                 => "EditConfig",
    "rss"                        => "RSS",
);

#
# Set default actions, then call sub handler
#
if ( !defined($ActionDispatch{$In{action}}) ) {
    $In{action} = defined($In{host}) ? "hostInfo" : "generalInfo";
}
my $action = $ActionDispatch{$In{action}};

#
# For some reason under mod_perl, the use lib above is unreliable,
# and sometimes the module below cannot be found.  Explicitly push
# the directory onto INC if it is missing.  This is an ugly hack;
# need to figure out what's really going on...
#
my $installDir = '/usr/share/backuppc/lib';
push(@INC, $installDir) if ( !grep($_ eq $installDir, @INC) );

#
# Load the relevant action script and run it
#
require "BackupPC/CGI/$action.pm"
	    if ( !defined($BackupPC::CGI::{"${action}::"}) );
$BackupPC::CGI::{"${action}::"}{action}();
