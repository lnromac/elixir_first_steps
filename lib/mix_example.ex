defmodule MixExample do
  use Application

  def start(_type, _args) do
    IO.puts(MixExample.hello())
    Supervisor.start_link([], strategy: :one_for_one)
  end

  def hello do
    :word
  end
end
