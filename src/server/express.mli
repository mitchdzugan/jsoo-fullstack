type express
type req
type res
val express : unit -> express
  [@@js.custom
    let express : unit -> express = Js_of_ocaml.Js.Unsafe.js_expr {|require("express")|}]

val get : string -> (req -> res -> unit) -> express -> express
[@@js.custom
  val get_ : express -> string -> (req -> res -> unit) -> express [@@js.call "get"]
  let get s h a = get_ a s h]
val listen : int -> (unit -> unit) -> express -> unit
  [@@js.custom
    val listen_ : express -> int -> (unit -> unit) -> unit [@@js.call "listen"]
    let listen p f a = listen_ a p f]
val send : res -> string -> unit [@@js.call "send"]
