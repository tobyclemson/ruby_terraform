# frozen_string_literal: true

require 'spec_helper'

describe RubyTerraform::Commands::Show do
  before do
    RubyTerraform.configure do |config|
      config.binary = 'path/to/binary'
    end
  end

  after do
    RubyTerraform.reset!
  end

  it_behaves_like(
    'a command with an argument',
    described_class, 'show', :path
  )

  it_behaves_like(
    'a command without a binary supplied',
    described_class, 'show'
  )

  it_behaves_like(
    'a command with a flag',
    described_class, 'show', :no_color
  )

  it_behaves_like(
    'a command with a flag',
    described_class, 'show', :json
  )

  it_behaves_like(
    'a command with global options',
    described_class, 'show'
  )
end
