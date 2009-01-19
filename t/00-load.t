#!/usr/bin/perl

use ex::lib '../lib';
use Test::More tests => 1;

BEGIN { use_ok( 'Test::More::UTF8' ); }

diag( "Testing Test::More::UTF8 $Test::More::UTF8::VERSION, Perl $], $^X" );
