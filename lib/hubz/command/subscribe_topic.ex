defmodule Hubz.Command.SubscribeTopic do
  @derive [Poison.Encoder]
  @enforce_keys [:subscriber, :topic]
  defstruct [:subscription_id, :subscriber, :topic, :duration, :method]
end
