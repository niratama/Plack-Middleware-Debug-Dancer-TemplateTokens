package Plack::Middleware::Debug::Dancer::TemplateTokens;

use strict;
use warnings;

our $VERSION = '0.01';

use parent qw(Plack::Middleware::Debug::Base);
use Plack::Util::Accessor qw(tokens);
use Dancer::Hook;

sub prepare_app {
	my $self = shift;

	Dancer::Hook->new('before_template', sub {
		my $tokens = shift;

		$self->tokens($tokens);
	});
}

sub run {
	my ($self, $env, $panel) = @_;

	return sub {
		my $res = shift;

		$panel->nav_subtitle("Dancer::TemplateTokens");
		$panel->content($self->render_hash($self->tokens));
	};
}

1;
__END__
=pod

=head1 NAME

Plack::Middleware::Debug::Dancer::TemplateTokens - 

=head1 VERSION

Version 0.01

=head1 SYNOPSIS

=head1 AUTHOR

Kenichi Kobayashi, C<< <niratama3 at gmail.com> >>

=head1 SEE ALSO

L<Dancer::Debug> L<Plack::Middleware::Debug>

=head1 LICENSE AND COPYRIGHT

Copyright 2011 Kenichi Kobayashi.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

See http://dev.perl.org/licenses/ for more information.

=cut
