defmodule Hubz.Event.TopicSubscribed do
  @derive [Poison.Encoder]
  defstruct [:subscription_id, :subscriber, :topic, :duration, :method]
end
