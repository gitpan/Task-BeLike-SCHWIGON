
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Modules SCHWIGON uses",
  "AUTHOR" => "Steffen Schwigon <ss5\@renormalist.net>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Task-BeLike-SCHWIGON",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Task::BeLike::SCHWIGON",
  "PREREQ_PM" => {
    "App::Ack" => 0,
    "App::Cmd" => 0,
    "App::DPath" => 0,
    "App::Nopaste" => 0,
    "App::Rad" => 0,
    "App::Software::License" => 0,
    "App::cpanminus" => 0,
    "App::cpanoutdated" => 0,
    "Archive::Tar::Wrapper" => 0,
    "Bundle::CPANxxl" => 0,
    "Bundle::LWP" => 0,
    "Bundle::libnet" => 0,
    "CPAN::Mini" => 0,
    "CPAN::Mini::Devel" => 0,
    "CPAN::Reporter" => 0,
    "CPAN::Uploader" => 0,
    "Cache::Cache" => 0,
    "Cache::FileCache" => 0,
    "DBD::Pg" => 0,
    "DBD::SQLite" => 0,
    "DBD::mysql" => 0,
    "DBI" => 0,
    "DBIx::Class" => 0,
    "DBIx::Class::Schema::Loader" => 0,
    "DBIx::Class::Schema::Versioned" => 0,
    "DBIx::Class::TimeStamp" => 0,
    "Data::DPath" => 0,
    "Data::Visitor" => 0,
    "Data::YAML" => 0,
    "DateTime" => 0,
    "DateTime::Format::Builder" => 0,
    "DateTime::Format::Mail" => 0,
    "DateTime::Format::MySQL" => 0,
    "DateTime::Format::Natural" => 0,
    "DateTime::Format::Strptime" => 0,
    "Devel::Backtrace" => 0,
    "Devel::Cover" => 0,
    "Devel::NYTProf" => 0,
    "Devel::bt" => 0,
    "Digest::SHA1" => 0,
    "Directory::Scratch" => 0,
    "Dist::Zilla" => 0,
    "Dist::Zilla::PluginBundle::SCHWIGON" => 0,
    "Dist::Zilla::PluginBundle::TAPPER" => 0,
    "File::ShareDir" => 0,
    "File::Slurp" => 0,
    "File::Type" => 0,
    "Hash::Merge" => 0,
    "Hash::Merge::Simple" => 0,
    "JSON" => 0,
    "JSON::Syck" => 0,
    "JSON::XS" => 0,
    "List::AllUtils" => 0,
    "List::MoreUtils" => 0,
    "Log::Log4perl" => 0,
    "Module::Install" => "0.95",
    "Module::Install::AuthorRequires" => 0,
    "Module::Install::AuthorTests" => 0,
    "Module::Install::CheckConflicts" => 0,
    "Module::Install::ExtraTests" => 0,
    "Moose" => 0,
    "Moose::Autobox" => 0,
    "MooseX::Daemonize" => 0,
    "MooseX::Declare" => 0,
    "MooseX::LazyRequire" => 0,
    "MooseX::Log::Log4perl" => 0,
    "MooseX::Method::Signatures" => 0,
    "MooseX::Types::Common" => 0,
    "MooseX::Types::DateTime" => 0,
    "MooseX::Types::Email" => 0,
    "MooseX::Types::LoadableClass" => 0,
    "MooseX::Types::Path::Class" => 0,
    "MooseX::Types::URI" => 0,
    "Net::Daemon" => 0,
    "Net::SSH" => 0,
    "Net::SSH::Expect" => 0,
    "Net::Server" => 0,
    "Net::Server::PreForkSimple" => 0,
    "Net::TFTP" => 0,
    "PadWalker" => 0,
    "Parse::RecDescent" => 0,
    "Perl::Tidy" => 0,
    "Perl::Version" => "1.010",
    "Pod::Coverage::TrustPod" => 0,
    "Pod::Weaver::PluginBundle::SCHWIGON" => 0,
    "Pod::Weaver::PluginBundle::TAPPER" => 0,
    "Regexp::Common" => 0,
    "SQL::Translator" => 0,
    "Sub::Exporter" => 0,
    "TAP::DOM" => 0,
    "TAP::Formatter::HTML" => 0,
    "TAP::Parser::Aggregator" => 0,
    "Task::PerlFormance" => 0,
    "Task::SDK::Moose" => 0,
    "Template" => 0,
    "Term::ReadLine::Gnu" => 0,
    "Term::ReadLine::Perl" => 0,
    "Test::Aggregate" => 0,
    "Test::Deep" => 0,
    "Test::Fixture::DBIC::Schema" => 0,
    "Test::MockModule" => 0,
    "Test::Pod" => 0,
    "Test::Pod::Coverage" => 0,
    "Test::Reporter" => 0,
    "Test::Reporter::Transport::Socket" => 0,
    "Test::WWW::Mechanize::Catalyst" => 0,
    "TryCatch" => 0,
    "URI" => 0,
    "URI::Escape" => 0,
    "V" => 0,
    "YAML" => 0,
    "YAML::Syck" => 0,
    "YAML::XS" => 0,
    "bareword::filehandles" => 0,
    "indirect" => 0,
    "multidimensional" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "TEST_REQUIRES" => {
    "Test::More" => 0
  },
  "VERSION" => "0.003",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  my $tr = delete $WriteMakefileArgs{TEST_REQUIRES};
  my $br = $WriteMakefileArgs{BUILD_REQUIRES};
  for my $mod ( keys %$tr ) {
    if ( exists $br->{$mod} ) {
      $br->{$mod} = $tr->{$mod} if $tr->{$mod} > $br->{$mod};
    }
    else {
      $br->{$mod} = $tr->{$mod};
    }
  }
}

unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



