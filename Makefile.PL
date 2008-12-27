use ExtUtils::MakeMaker;
require 5.008;
WriteMakefile(
	NAME => 'Net::INET6Glue',
	VERSION_FROM => 'lib/Net/INET6Glue.pm',
	PREREQ_PM => {
		'IO::Socket::INET6' => 2.54,
		'Net::FTP' => 2.75,
	},
);
