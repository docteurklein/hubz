defmodule HubzTest do
  use Hubz.InMemoryCase

  test "greets the world" do
    assert Hubz.subscribe("topic", "me") == nil
  end
end
