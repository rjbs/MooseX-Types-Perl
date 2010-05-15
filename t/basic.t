use strict;
use warnings;

use MooseX::Types::Perl -all;
use Test::More;

{
  ok(is_LaxVersionStr('1.234'), "1.234 is a lax version string");
  my $obj = to_VersionObject('1.234');
  is($obj->stringify, '1.234', "we can coerce and restring a LaxVersionStr");
}

{
  ok(is_Identifier('_'),       '_ is an identifier');
  ok(! is_SafeIdentifier('_'), '_ is not a safe identifier');
}

{
  ok(is_DistName('Foo-Bar'),    'Foo-Bar is a dist name');
  ok(! is_DistName('Foo::Bar'), 'Foo::Bar is not a dist name');
}

{
  ok(! is_PackageName('Foo-Bar'), 'Foo-Bar is not a package name');
  ok(is_PackageName('Foo::Bar'),  'Foo::Bar is a package name');
}

done_testing;
