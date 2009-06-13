use ExtUtils::MakeMaker;

# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.

WriteMakefile
(
	($] ge '5.005') ?
	(
		AUTHOR   => 'Ron Savage (ron@savage.net.au)',
		ABSTRACT => 'A CGI::Application::Dispatch demonstration module',
    ) : (),
	clean =>
	{
		FILES => 'blib/* Makefile MANIFEST CGI-Application-Demo-Dispatch-*'
	},
	dist =>
	{
		COMPRESS => 'gzip',
		SUFFIX   => 'gz'
	},
	DISTNAME  => 'CGI-Application-Demo-Dispatch',
	NAME      => 'CGI::Application::Demo::Dispatch',
	PL_FILES  => {},
	PREREQ_PM =>
	{
		CGI                        => 0,
		CGI::Application           => 0,
		CGI::Application::Dispatch => 0,
		FCGI::ProcManager          => 0,
		HTML::Template             => 0,
		Test::More                 => 0,
		Test::Pod                  => 0,
	},
	VERSION_FROM => 'lib/CGI/Application/Demo/Dispatch.pm',
);
