defmodule Repo do
  def pub do
    path = Application.app_dir(:repo, "priv/keys/test.pub.pem")
    {:ok, key} = File.read(path)

    key
    |> JOSE.JWK.from_pem()
    |> JOSE.JWK.to_map()
  end
end
