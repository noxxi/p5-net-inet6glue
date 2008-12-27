use ExtUtils::MakeMaker;
require 5.008;
my $xt = prompt( "Should I do external tests?\n".
	"These tests will fail if there is no internet connection or if a firewall\n".
	"blocks active or passive IPv6 FTP traffic.\n".
	"[y/N]", 'n' );
WriteMakefile(
	NAME => 'Net::INET6Glue',
	VERSION_FROM => 'lib/Net/INET6Glue.pm',
	PREREQ_PM => {
		'IO::Socket::INET6' => 2.54,
		'Net::FTP' => 2.75,
	},
	$xt =~m{^y}i ? ( test => { TESTS => 't/*.t t/external/*.t' }):(),
);
