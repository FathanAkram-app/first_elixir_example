alias FirstElixirExample.Repo
alias FirstElixirExample.Management.Document

Repo.insert! %Document{
    name: "First Document",
    content: "Robotic arms with a handtracking",
    view_count: 12,
    published: true,
    project_id: 1
}
Repo.insert! %Document{
    name: "Second Document",
    content: "this is the second document of first project",
    view_count: 300,
    published: true,
    project_id: 1
}
Repo.insert! %Document{
    name: "First Document",
    content: "First Document of the second project",
    view_count: 44,
    published: false,
    project_id: 2
}
Repo.insert! %Document{
    name: "Secret Document",
    content: "UFO area 21",
    view_count: 8000,
    published: true,
    project_id: 3
}
Repo.insert! %Document{
    name: "document 21",
    content: "this is the 21 document",
    view_count: 21,
    published: true,
    project_id: 2
}
Repo.insert! %Document{
    name: "unknown Document",
    content: "unknown conent",
    view_count: 334,
    published: true,
    project_id: 2
}
