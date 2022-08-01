let authenticated : (Shape.user -> React.element) -> Shape.user option -> React.element =
 fun getPage user ->
  match user with
  | Some s -> getPage s
  | None ->
    Link.home |> Link.push;
    React.null

let%component make () =
  let user = None in
  React.Fragment.make
    ~children:
      [
        Header.make ~user ();
        Footer.make ();
      ]
    ()
