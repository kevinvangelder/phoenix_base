ExUnit.start

Mix.Task.run "ecto.create", ~w(-r PhoenixBase.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r PhoenixBase.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(PhoenixBase.Repo)
