#!/usr/bin/perl 


use HTTP::Request;
use LWP::Simple;
use LWP::UserAgent;
use Win32::Console::ANSI;
use IO::Socket::INET;
use Term::ANSIColor;
use IO::Select;
use HTTP::Response;
use HTTP::Request::Common qw(POST);
use HTTP::Request::Common qw(GET);
use URI::URL;



if ($^O =~ /MSWin32/) {system("cls"); system("color A");
}else { system("clear"); }
print color 'reset';
print color("bold red"),"                      IIIIIIIIII      CCCCCCCCCCCCC       GGGGGGGGGGGGG	\n";
print color("bold red"),"                      I::::::::I   CCC::::::::::::C    GGG::::::::::::G	\n";
print color("bold red"),"                      I::::::::I CC:::::::::::::::C  GG:::::::::::::::G	\n";
print color("bold red"),"                      II::::::IIC:::::CCCCCCCC::::C G:::::GGGGGGGG::::G	\n";
print color("bold red"),"                        I::::I C:::::C       CCCCCCG:::::G       GGGGGG	\n";
print color("bold red"),"                        I::::IC:::::C             G:::::G              	\n";
print color("bold red"),"                        I::::IC:::::C             G:::::G              	\n";
print color("bold red"),"                        I::::IC:::::C             G:::::G    GGGGGGGGGG	\n";
print color("bold red"),"                        I::::IC:::::C             G:::::G    G::::::::G	\n";
print color("bold red"),"                        I::::IC:::::C             G:::::G    GGGGG::::G	\n";
print color("bold red"),"                        I::::IC:::::C             G:::::G        G::::G	\n";
print color("bold red"),"                        I::::I C:::::C       CCCCCCG:::::G       G::::G	\n";
print color("bold red"),"                      II::::::IIC:::::CCCCCCCC::::C G:::::GGGGGGGG::::G	\n";
print color("bold red"),"                      I::::::::I CC:::::::::::::::C  GG:::::::::::::::G	\n";
print color("bold red"),"                      I::::::::I   CCC::::::::::::C    GGG::::::GGG:::G	\n";
print color("bold red"),"                      IIIIIIIIII      CCCCCCCCCCCCC       GGGGGG   GGGG	\n";
print color 'reset';
print color("bold Green"), "			Bing Dorker Version 1.0 Perl									\n";
print color("bold Green"), "			Developers : Jok3r _ Golden Hacker								\n";
print color("bold Green"), "																			\n";
print color("bold Green"), "				Iran-cYbeR.Net												\n";
print color("bold Green"), "				Telegram : publish											\n";
print color 'reset';
print color("bold yellow"),"   [1] Single Dork \n";
print color("bold white"),"   [2] ip server  \n";
print color("yellow"), "\n";
print color 'reset';
print color("bold Green"),"   Enter your Method: ";
$name=<STDIN>;
chomp $name;


if ($name=~ "1")
{

if ($^O =~ /MSWin32/) {system("cls"); system("color A");
}else { system("clear"); }

print color 'reset';
print color("bold white"),  "\n\n\n	     #################################################################################	\n";
print color("bold white"),  "	     #		       Bing Dorker Version 1.0 Perl				     #	\n";
print color 'reset';
print color("bold Green"),  "	     #		     Developers : Jok3r _ Golden Hacker				     #	\n";
print color("bold Green"),  "	     #										     #	\n";
print color 'reset';
print color("bold red"),    "  	     #			     Iran-cYbeR.Net					     #	\n";
print color 'reset';
print color("bold yellow"), "	     #			   Telegram : publish					     #	\n";
print color("bold yellow"), "	     #################################################################################	\n";
print color 'reset';
$ag = LWP::UserAgent->new();
$ag->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ag->timeout(10);

print color("bold Green"),"  \n\n        Enter your Dork : ";
$dork=<STDIN>;
chomp $dork;
print color("yellow"), "\n";

for (my $i=1; $i<=2000; $i+=10) {
$url = "http://www.bing.com/search?q=$dork&filt=all&first=$i&FORM=PERE";
$resp = $ag->request(HTTP::Request->new(GET => $url));
$rrs = $resp->content;

while($rrs =~ m/<a href=\"?http:\/\/(.*?)\//g){

$link = $1;
	if ( $link !~ /overture|msn|live|bing|yahoo|duckduckgo|google|w3|microsof/)
	{
				if ($link !~ /^http:/)
			 {
				$link = 'http://' . "$link" . '/';
			 }



if($link !~ /\"|\?|\=|index\.php/){
					if  (!  grep (/$link/,@result))
					{
print "$link\n";
open(save, '>>scanned_dork.txt');
    print save "$link\n";
    close(save);
						push(@result,$link);
					}
} 
}
}
}






}

if ($name=~ "2")
{

if ($^O =~ /MSWin32/) {system("cls"); system("color A");
}else { system("clear"); }

print color 'reset';
print color("bold white"),  "\n\n\n	     #################################################################################	\n";
print color("bold white"),  "	     #		       Bing Dorker Version 1.0 Perl				     #	\n";
print color 'reset';
print color("bold Green"),  "	     #		     Developers : Jok3r _ Golden Hacker				     #	\n";
print color("bold Green"),  "	     #										     #	\n";
print color 'reset';
print color("bold red"),    "  	     #			     Iran-cYbeR.Net					     #	\n";
print color 'reset';
print color("bold yellow"), "	     #			   Telegram : publish					     #	\n";
print color("bold yellow"), "	     #################################################################################	\n";
print color 'reset';
$ag = LWP::UserAgent->new();
$ag->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ag->timeout(10);

print color("bold Green"),"  \n\n        Enter your ip : ";
$ip=<STDIN>;
chomp $ip;
print color("yellow"), "\n";

for (my $i=1; $i<=2000; $i+=10) {
$url = "http://www.bing.com/search?q=ip:$ip&filt=all&first=$i&FORM=PERE";
$resp = $ag->request(HTTP::Request->new(GET => $url));
$rrs = $resp->content;
 
while($rrs =~ m/<a href=\"?http:\/\/(.*?)\//g){

$link = $1;
	if ( $link !~ /overture|msn|live|bing|yahoo|duckduckgo|google|w3|microsof/)
	{
				if ($link !~ /^http:/)
			 {
				$link = 'http://' . "$link" . '/';
			 }

if($link !~ /\"|\?|\=|index\.php/){
					if  (!  grep (/$link/,@result))
					{
print "$link\n";
open(save, '>>scanned_ip.txt');
    print save "$link\n";
    close(save);
						push(@result,$link);
					}
} 
}
}
}


}

exit
