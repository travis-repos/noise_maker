require "spec_helper"

describe "A test suite that produces a lot of pointless log output" do
  it "exists" do
    n = ENV.fetch("NOISE_LEVEL", (3 * 1024 * 1024))
    r = ENV.fetch("RUNS", 5)

    r.times do
      n.times do
        print "."
        $stdout.flush
      end
    end

    true.should be_true
  end
end
