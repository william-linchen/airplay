require "test_helper"
require "airplay/configuration"

setup do
  @configuration = Airplay::Configuration.new
end

test "default configuration" do
  assert @configuration.log_level == 4
  assert @configuration.autodiscover == true
  assert @configuration.host == "0.0.0.0"
  assert @configuration.port == nil
  assert @configuration.output.respond_to?(:info)
end

test "changing configuration" do
  @configuration.log_level = 1
  @configuration.autodiscover = false
  @configuration.host = "200.47.220.245"
  @configuration.port = "80"

  assert @configuration.log_level == 1
  assert @configuration.autodiscover == false
  assert @configuration.host == "200.47.220.245"
  assert @configuration.port == "80"
end
