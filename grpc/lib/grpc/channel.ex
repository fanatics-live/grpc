defmodule GRPC.Channel do
  @moduledoc """
  A struct to store the connection data, which should be passed to
  RPC functions as the first argument:

      Greeter.Stub.say_hello(channel, request)

  ## Fields

    * `:host` - server's host to connect
    * `:port` - server's port to connect
    * `:scheme` - scheme of connection, like `http`
    * `:cred` - credentials used for authentication
    * `:adapter` - a client adapter module, like `GRPC.Client.Adapters.Gun`
    * `:codec` - a default codec for this channel
    * `:adapter_payload` - payload the adapter uses
    * `:connection_slot` - internal physical-connection identity
    * `:connection_pool` - internal same-endpoint connection selector
  """

  defstruct host: nil,
            port: nil,
            scheme: nil,
            cred: nil,
            ref: nil,
            adapter: nil,
            adapter_payload: nil,
            connection_slot: nil,
            connection_pool: nil,
            codec: GRPC.Codec.Proto,
            interceptors: [],
            compressor: nil,
            accepted_compressors: [],
            headers: []
end
