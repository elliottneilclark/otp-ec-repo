defmodule RepoTest do
  use ExUnit.Case
  doctest Repo

  test "greets the world" do
    assert {%{kty: :jose_jwk_kty_okp_ed25519}, _} = Repo.pub()
  end
end
