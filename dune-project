(lang dune 2.7)

(name jsoo-fullstack)

(source
 (github mitchdzugan/jsoo-fullstack))

(license MIT)

(authors "dz")

(maintainers "dz")

(generate_opam_files true)

(package
 (name jsoo-fullstack)
 (synopsis "Template for fullstack jsoo project.")
 (description "A jsoo react frontend with jsoo express backend and shared business logic.")
 (depends
  ;; General system dependencies
  (dune (>= 2))
  (ocaml (>= 4.10.0))

  ;; Web toolkit
  (js_of_ocaml (and (>= 3.8.0) (< 3.11.0)))
  (js_of_ocaml-ppx (and (>= 3.8.0) (< 3.11.0)))
  (promise_jsoo (and (>= 0.3.1) (< 0.4.0)))
  (gen_js_api (and (>= 1.0.8) (< 2.0.0)))
  (ppx_jsobject_conv :dev)
  (jsoo-react :dev)

  ;; Dev dependencies
  (ocaml-lsp-server :dev)
))
