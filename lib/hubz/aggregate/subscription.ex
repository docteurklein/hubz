defmodule Hubz.Aggregate.Subscription do

  alias Hubz.Command.SubscribeTopic
  alias Hubz.Event.TopicSubscribed
  alias __MODULE__

  @enforce_keys [:topic]
  defstruct [:subscription_id, :subscriber, :topic]

  def execute(%Subscription{} = subscription, %SubscribeTopic{} = command) do
    %TopicSubscribed{subscription_id: command.subscription_id, subscriber: command.subscriber, topic: command.topic}
  end

  def apply(subscription, %TopicSubscribed{} = event) do
    %Subscription{subscription |
      subscription_id: event.subscription_id,
      subscriber: event.subscriber,
      topic: event.topic,
    }
  end
end
