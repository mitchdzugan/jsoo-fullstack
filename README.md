# Getting started

You will need to install both [Opam](https://opam.ocaml.org/doc/Install.html) and [Yarn](https://yarnpkg.com/getting-started/install) package managers.

To get the project running locally:

```bash
git clone https://github.com/jchavarri/jsoo-react-realworld-example-app.git
cd jsoo-react-realworld-example-app
yarn install # install JavaScript dependencies
make create-switch # create Opam local switch
make init # install OCaml dependencies
make build # build OCaml sources, generate JavaScript
make start # bundle with Webpack, start dev web server
```

Then open http://localhost:8000 to see your app.

