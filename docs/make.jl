using Documenter, Charlie_mtg
makedocs(
  sitename="Charlie_mtg",
  doctest = false,
  strict = false,
  format = Documenter.HTML(prettyurls = get(ENV, "CI", nothing) == "true",),
  modules = [Documenter, Charlie_mtg],
  clean = false,
  pages = Any[
    "Home" => "index.md",
  ]
)
deploydocs(
           repo = "github.com/LenkaNovak/Charlie_mtg.git",
           target = "build",
          )
