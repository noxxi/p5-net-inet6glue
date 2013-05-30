use ExtUtils::MakeMaker 6.46;
require 5.008;
my $xt = prompt( 
    "Should I do external tests?\n".
    "These tests will fail if there is no internet connection or if a firewall\n".
    "blocks active or passive IPv6 FTP traffic.\n".
    "[y/N]", 
    'n' 
);
WriteMakefile(
    NAME => 'Net::INET6Glue',
    AUTHOR => [ "Steffen Ullrich <sullr@cpan.org>" ],
    LICENSE => 'perl',
    VERSION_FROM => 'lib/Net/INET6Glue.pm',
    PREREQ_PM => {
	'IO::Socket::INET6' => 2.54,
	'Net::FTP' => 2.75,
    },
    META_MERGE => {
	resources => {
	    license     => 'http://dev.perl.org/licenses/',
	    homepage    => 'https://github.com/noxxi/p5-net-inet6glue',
	    bugtracker  => 'https://rt.cpan.org/Dist/Display.html?Queue=Net-INET6Glue',
	    Repository  => 'https://github.com/noxxi/p5-net-inet6glue',
	},
    },
    $xt =~m{^y}i ? ( test => { TESTS => 't/*.t t/external/*.t' }):(),
);
