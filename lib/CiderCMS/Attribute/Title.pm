package CiderCMS::Attribute::Title;

use strict;
use warnings;

use base qw(CiderCMS::Attribute::String);

=head1 NAME

CiderCMS::Attribute::Title - Title attribute

=head1 SYNOPSIS

See L<CiderCMS::Attribute::String>

=head1 DESCRIPTION

Title attributes are String attributes that can produce a dcid

=head1 METHODs

=head2 prepare_update

=cut

sub prepare_update {
    my ($self) = @_;

    my $dcid = lc $self->{data};
    $dcid =~ s/[^a-z0-9_\.-]/_/gxm;

    $self->{object}{dcid} = $dcid;

    return;
}

=head1 AUTHOR

Stefan Seifert

=head1 LICENSE

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
