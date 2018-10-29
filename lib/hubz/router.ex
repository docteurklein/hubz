defmodule Hubz.Router do
  use Commanded.Commands.Router

  alias Hubz.Command.SubscribeTopic
  alias Hubz.Event.TopicSubscribed
  alias Hubz.Aggregate.Subscription

  identify Subscription, by: :subscription_id, prefix: "subscription-"

  dispatch [
    SubscribeTopic,
  ], to: Subscription
end
