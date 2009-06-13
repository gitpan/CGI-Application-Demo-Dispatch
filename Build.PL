use Module::Build;

Module::Build -> new
(
	module_name    => 'CGI::Application::Demo::Dispatch',
	license        => 'artistic',
	dist_abstract  => 'Help study usage of CGI::Application::Dispatch',
	dist_author    => 'Ron Savage <ron@savage.net.au>',
	build_requires =>
	{
		Test::More => 0,
		Test::Pod  => 0,
	},
	requires =>
	{
		CGI                        => 0,
		CGI::Application           => 0,
		CGI::Application::Dispatch => 0,
		FCGI::ProcManager          => 0,
		HTML::Template             => 0,
	},
) -> create_build_script();
