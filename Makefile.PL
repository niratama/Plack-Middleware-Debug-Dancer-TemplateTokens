use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Plack::Middleware::Debug::Dancer::TemplateTokens',
    AUTHOR              => q{Kenichi Kobayashi <niratama3@gmail.com>},
    VERSION_FROM        => 'lib/Plack/Middleware/Debug/Dancer/TemplateTokens.pm',
    ABSTRACT_FROM       => 'lib/Plack/Middleware/Debug/Dancer/TemplateTokens.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Dancer::Hook' => 0,
        'Plack::Util::Accessor' => 0,
        'Plack::Middleware::Debug::Base' => 0,
        'parent' => 0,
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Plack-Middleware-Debug-Dancer-TemplateTokens-*' },
);
