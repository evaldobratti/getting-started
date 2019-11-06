# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     GettingStarted.Repo.insert!(%GettingStarted.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias GettingStarted.BackOffice.{
  Project,
  Sector
}

Enum.each([
  "White Bear",
  "Nosedive",
  "Men against fire",
  "Be right Back",
  "S*** ** and dance",
  "Hang the DJ",
], fn name ->
  GettingStarted.Repo.insert!(%Project{
    name: name
  })
end)

Enum.each([
  "Finances",
  "Special Effects",
  "Writing",
  "Final Cut",
], fn name ->
  GettingStarted.Repo.insert!(%Sector{
    name: name
  })
end)
