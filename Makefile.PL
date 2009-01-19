use inc::Module::Install;

name     'Test-More-UTF8';
all_from 'lib/Test/More/UTF8.pm';
author   'Mons Anderson <mons@cpan.org>';
license  'perl';

build_requires 'Test::More';
build_requires 'ex::lib';

auto_install;

WriteAll;

