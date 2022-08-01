open Express

let () =
  express()
  |> get "/" (fun _ res -> send res "Hello there world")
  |> listen 3000 (fun () -> print_string "Listening on port 3000\n")
