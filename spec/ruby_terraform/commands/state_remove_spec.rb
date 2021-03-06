# frozen_string_literal: true

require 'spec_helper'

describe RubyTerraform::Commands::StateRemove do
  before do
    RubyTerraform.configure do |config|
      config.binary = 'path/to/binary'
    end
  end

  after do
    RubyTerraform.reset!
  end

  it_behaves_like(
    'a command with a variadic argument',
    described_class, 'state rm', :addresses, singular: :address
  )

  it_behaves_like(
    'a command without a binary supplied',
    described_class, 'state rm'
  )

  it_behaves_like(
    'a command with a flag',
    described_class, 'state rm', :dry_run
  )

  it_behaves_like(
    'a command with an option',
    described_class, 'state rm', :backup
  )

  it_behaves_like(
    'a command with a boolean option',
    described_class, 'state rm', :lock
  )

  it_behaves_like(
    'a command with an option',
    described_class, 'state rm', :lock_timeout
  )

  it_behaves_like(
    'a command with an option',
    described_class, 'state rm', :state
  )

  it_behaves_like(
    'a command with a flag',
    described_class, 'state rm', :ignore_remote_version
  )

  it_behaves_like(
    'a command with global options',
    described_class, 'state rm'
  )
end
