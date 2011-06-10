#!perl -T

use Test::More tests => 1;

BEGIN {
    use_ok( 'Plack::Middleware::Debug::Dancer::TemplateTokens' ) || print "Bail out!\n";
}

diag( "Testing Plack::Middleware::Debug::Dancer::TemplateTokens $Plack::Middleware::Debug::Dancer::TemplateTokens::VERSION, Perl $], $^X" );
