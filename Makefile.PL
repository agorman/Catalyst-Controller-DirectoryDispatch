
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Simple directory listing with built in url dispatching",
  "AUTHOR" => "Andy Gorman <agorman\@cpan.org>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Catalyst-Controller-DirectoryDispatch",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Catalyst::Controller::DirectoryDispatch",
  "PREREQ_PM" => {
    "Catalyst::Action::Serialize" => "0.83",
    "Catalyst::Runtime" => "5.7010"
  },
  "TEST_REQUIRES" => {
    "File::Spec" => 0,
    "IO::Handle" => 0,
    "IPC::Open3" => 0,
    "JSON::Any" => 0,
    "Test::More" => 0,
    "Test::WWW::Mechanize::Catalyst" => 0
  },
  "VERSION" => "1.01",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "Catalyst::Action::Serialize" => "0.83",
  "Catalyst::Runtime" => "5.7010",
  "File::Spec" => 0,
  "IO::Handle" => 0,
  "IPC::Open3" => 0,
  "JSON::Any" => 0,
  "Test::More" => 0,
  "Test::WWW::Mechanize::Catalyst" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



