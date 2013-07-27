
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Dancer::ModuleLoader" => 0,
    "File::Find" => 0,
    "File::Temp" => 0,
    "Module::Build" => "0.3601",
    "Test::More" => 0
  },
  "configure_requires" => {
    "ExtUtils::MakeMaker" => "6.30",
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Dancer logger engine for Sys::Syslog",
  "dist_author" => [
    "Alexis Sukrieh <sukria\@sukria.net>",
    "Yanick Champoux <yanick\@cpan.org>"
  ],
  "dist_name" => "Dancer-Logger-Syslog",
  "dist_version" => "0.5",
  "license" => "perl",
  "module_name" => "Dancer::Logger::Syslog",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Dancer::Config" => 0,
    "Dancer::Logger::Abstract" => 0,
    "File::Basename" => 0,
    "Sys::Syslog" => 0,
    "base" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
