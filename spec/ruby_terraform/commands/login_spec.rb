# frozen_string_literal: true

require 'spec_helper'

describe RubyTerraform::Commands::Login do
  let(:command) { described_class.new(binary: 'terraform') }

  before do
    RubyTerraform.configure do |config|
      config.binary = 'path/to/binary'
    end
  end

  after do
    RubyTerraform.reset!
  end

  command = 'login'

  it_behaves_like 'a command with an argument', [command, :hostname]

  it_behaves_like 'a command without a binary supplied',
                  [command, described_class]
end