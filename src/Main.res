let root = ReactDOM.querySelector("#root")

type person = {
  name: string,
  age?: int,
  another?: string,
}

let person = {
  name: "Eren",
}

switch person {
| {name, age: 12} => Js.log(`Name: ${name} Age: 12`)
| {name, age: ?None} => Js.log(`Name: ${name} Age: Null`)
| {name} => Js.log(`Name: ${name}`)
}

let () = switch root {
| Some(element) =>
  ReactDOM.render(
    <React.StrictMode>
      <App />
    </React.StrictMode>,
    element,
  )
| None => Js.Exn.raiseError("Root not found!")
}
