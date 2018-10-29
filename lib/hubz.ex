defmodule Hubz do

  alias Hubz.Router
  alias Hubz.Command.SubscribeTopic
  alias Hubz.Event.TopicSubscribed

  def subscribe(topic, subscriber) do
    id = UUID.uuid4()
    %SubscribeTopic{subscription_id: id, topic: topic, subscriber: subscriber}
    |> Router.dispatch()
  end
end
