#!/usr/bin/perl -ws
die "Cannot open dir" if !(opendir(DIR,"/home/im/scripts"));

my @dir = grep { (!/^\./) && -f "/home/im/scripts/".$_ } readdir(DIR);

my $memory = 0;
my $memoryvalue = 0;
my $cpu = 0;
my $cpuvalue = 0;
my $diskroot = 0;
my $diskrootvalue = 0;
my $diskvar = 0;
my $diskvarvalue = 0;
my @textfile = ();
my $mailtext = '';
my $result;
my $command = '';

for my $file (@dir){
	if ($file eq "log.log" || $file eq "logmail.log"){
		next;
	}
	die "Cannot open file $file" if !(open(FILE,"<", "/home/im/scripts/".$file));
	@textfile = <FILE>;
	$cpuvalue = $textfile[1];
	chomp($cpuvalue);
	if($cpuvalue >= 90.0){
		$cpu = 1;
	}
		
	$memoryvalue = $textfile[2];
	chomp($memoryvalue);
	if ($memoryvalue <= 200){ # Memoria livre abaixo de 200 MB
		$memory = 1;
	}

	$diskrootvalue = $textfile[3];
	chomp($diskrootvalue);
	if ($diskrootvalue >= 90){
		$diskroot = 1;
	}
	
	$diskvarvalue = $textfile[4];
	chomp($diskvarvalue);
	if ($diskvarvalue >= 90){
		$diskvar = 1;
	}

	if($memory || $cpu || $diskroot || $diskvar){
		chomp($textfile[0]);
		$mailtext = "Servidor ". $textfile[0]." tem os seguintes recursos acima do esperado:";
		$mailtext = $mailtext . "\nCPU -> Utilização a $cpuvalue%%" if ($cpu);	
		$mailtext = $mailtext . "\nMemória RAM -> Apenas $memoryvalue MB livres" if ($memory);
		$mailtext = $mailtext . "\nPartição / -> Capacidade a $diskrootvalue%%" if ($diskroot);
		$mailtext = $mailtext . "\nPartição /var -> Capacidade a $diskvarvalue%%" if ($diskvar);

		$command = 'printf "' . $mailtext . '" | mail -s "Servidor '. $textfile[0] .' com problemas" im@asim.pt';
		$result = `$command`;
		if($? == 0){
			print "Email sobre o host $textfile[0] enviado com sucesso\n";
		}else{
			print "Email sobre o host $textfile[0] falhou\n";
		}
	}

	$memory = 0;
	$cpu = 0;
	$diskroot = 0;
	$diskvar = 0;
	$memoryvalue = 0;
	$cpuvalue = 0;
	$diskrootvalue = 0;
	$diskvarvalue = 0;
	close(FILE);	
}
closedir(DIR);
