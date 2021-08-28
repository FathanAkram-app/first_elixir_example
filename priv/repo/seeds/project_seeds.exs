alias FirstElixirExample.Repo
alias FirstElixirExample.Management.Project

Repo.insert! %Project{
    title: "IOT Hand Tracker Project",
    description: "Robotic arms with a handtracking"
}

Repo.insert! %Project{
    title: "Note App",
    description: "My First project on android development"
}

Repo.insert! %Project{
    title: "First Elixir Example",
    description: "this project is the first project of my elixir learning"
}