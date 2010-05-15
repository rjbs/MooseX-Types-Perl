use strict;
use warnings;

use MooseX::Types::Perl -all;
use Test::More;

ok(is_LaxVersionStr('1.234'), "1.234 is a lax version string");

done_testing;
