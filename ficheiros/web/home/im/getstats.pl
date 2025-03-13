#!/usr/bin/perl
use strict;
use warnings;

chomp(my $hostname = `hostname`);
my $filename = "scripts/${hostname}";
open(my $fh, '>',$filename) or die "Não foi possível abrir o ficheiro '$filename' $!";
my $cpu_usage = `top -bn1 | grep "Cpu(s)" | sed "s/.*, *\\([0-9.]*\\)%* id.*/\\1/" | awk '{print 100 - \$1""}'`;
chomp($cpu_usage);

# Obtém a RAM disponível
my $ram_available = `free -m | grep Mem | tr -s ' ' '#' | cut -f7 -d#`;
chomp($ram_available);

# Obtém o uso da partição /
my $root_usage = `df -h | grep /dev/sda2 | tr -s ' ' '#' | cut -f5 -d# | cut -f1 -d%`;
chomp($root_usage);

# Obtém o uso da partição /var
my $var_usage = `df -h | grep /dev/sda3 | tr -s ' ' '#' | cut -f5 -d# | cut -f1 -d%`;
chomp($var_usage);

print $fh "$hostname\n";
print $fh "$cpu_usage\n";
print $fh "$ram_available\n";
print $fh "$root_usage\n";
print $fh "$var_usage\n";
close($fh);

print "Os dados foram guardados no ficheiro '$filename'.\n";

