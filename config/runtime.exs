import Config

config :iex, default_prompt: "saber>"
config :kv, :routing_table, [{?a..?z, node()}]

if config_env() == :prod do
  config :kv, :routing_table, [
    {?a..?m, :foo@CNMAC0130},
    {?n..?z, :bar@CNMAC0130}
  ]
end
