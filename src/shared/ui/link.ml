open React.Dom.Dsl
open Html

type location' = string

type onClickAction =
  | Location of location'
  | CustomFn of (unit -> unit)

let customFn fn = CustomFn fn

let location location = Location location

let make : string -> location' = fun a -> a

let toString : location' -> string = fun a -> a

let home = make "/"

let settings = make "/#/settings"

let register = make "/#/register"

let login = make "/#/login"

let createArticle = make "/#/editor"

let editArticle ~slug = make ("/#/editor/" ^ slug)

let article ~slug = make ("/#/article/" ^ slug)

let profile ~username = make ("/#/profile/" ^ username)

let favorited ~username = make (("/#/profile/" ^ username) ^ "/favorites")

let push : location' -> unit = fun location -> location |> toString |> React.Router.push

let availableIf : bool -> onClickAction -> onClickAction =
 fun available target -> if available then target else CustomFn ignore

let handleClick onClick event =
  ( match onClick with
  | Location location ->
    if Utils.isMouseRightClick event then (
      event |> React.Event.Mouse.preventDefault;
      location |> toString |> React.Router.push
    )
  | CustomFn fn -> fn ()
  );
  ignore ()

let%component make ?(className = "") ?(style = React.Dom.Style.make [||]) ~onClick ~children =
  let href_ =
    match onClick with
    | Location location -> Some (location |> toString)
    | CustomFn _fn -> None
  in
  a [| Prop.className className; Prop.style style; maybe href href_; Prop.onClick (handleClick onClick) |] children

module Button = struct
  let%component make ?(className = "") ?(style = React.Dom.Style.make [||]) ~onClick ?(disabled = false) ~children =
    button
      [| Prop.className className; Prop.style style; Prop.onClick (handleClick onClick); Prop.disabled disabled |]
      children
end
