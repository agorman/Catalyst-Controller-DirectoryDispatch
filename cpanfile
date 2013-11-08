requires "Catalyst::Action::Serialize" => "0.83";
requires "Catalyst::Runtime" => "5.7010";

on 'test' => sub {
  requires "File::Spec" => "0";
  requires "IO::Handle" => "0";
  requires "IPC::Open3" => "0";
  requires "JSON::Any" => "0";
  requires "Test::More" => "0";
  requires "Test::WWW::Mechanize::Catalyst" => "0";
};

on 'configure' => sub {
  requires "ExtUtils::MakeMaker" => "6.30";
};
