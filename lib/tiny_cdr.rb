# Copyright (c) 2008-2009 The Rubyists, LLC (effortless systems) <rubyists@rubyists.com>
# Distributed under the terms of the MIT license.
# The full text can be found in the LICENSE file included with this software
#
require "pathname"

class Pathname
  def /(other)
    join(other.to_s)
  end
end

$LOAD_PATH.unshift(File.expand_path("../", __FILE__))
module TinyCdr
  ROOT = Pathname($LOAD_PATH.first).join("..").expand_path
  LIBROOT = ROOT/:lib
  MIGRATION_ROOT = ROOT/:migrations
  MODEL_ROOT = ROOT/:model
  SPEC_HELPER_PATH = ROOT/:spec
end
