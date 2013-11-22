# Copyright (c) 2008-2009 The Rubyists, LLC (effortless systems) <rubyists@rubyists.com>
# Distributed under the terms of the MIT license.
# The full text can be found in the LICENSE file included with this software
#
require "pathname"
require 'log4r'
require 'log4r/configurator'

Log4r::Configurator.custom_levels(:DEBUG, :DEVEL, :INFO, :NOTICE, :WARN, :ERROR, :CRIT)

class Pathname
  def /(other)
    join(other.to_s)
  end
end

$LOAD_PATH.unshift(File.expand_path("../", __FILE__))
module TinyCdr
  Log = Log4r::Logger.new('FSR')
  Log.outputters = Log4r::Outputter.stdout
  Log.level = Log4r::INFO
  ROOT = Pathname($LOAD_PATH.first).join("..").expand_path
  LIBROOT = ROOT/:lib
  MIGRATION_ROOT = ROOT/:migrations
  MODEL_ROOT = ROOT/:model
  SPEC_HELPER_PATH = ROOT/:spec
end
