#!/usr/bin/perl

use ex::lib '../lib';
use Test::More tests => 4;

use Test::More::UTF8 qw(failure -utf8);
use Data::Dumper;
use IO::Handle;

my $sym = "\x{430}";
ok(!utf8::is_utf8("а"), 'no utf8 pragma');
{
	my @warns;
	local $SIG{__WARN__} = sub { push @warns,shift; };
	Test::More->builder->failure_output->print("# $sym\n");
	ok(!@warns, 'failure_output') or diag "Have warning: ".shift @warns;
	Test::More->builder->todo_output->print("# $sym\n");
	ok(@warns, 'todo_output') and @warns = ();
	Test::More->builder->output->print("# $sym\n");
	ok(@warns, 'output') and @warns = ();
}
