require 'spec_helper'

describe Product do
  it { should belong_to :cart }
end
