open! Core
open! Async
open! Import

let f ~silent () =
  if not silent
  then printf "hello\n%!";
  return ()
;;

let spec =
  let open Command.Spec in
  step (fun m silent -> m ~silent)
  +> flag "-silent" no_arg ~doc:" Be silent."
;;

let f_command =
  Command.async_spec
    ~summary:"Simulate paired timing."
    spec
    f
;;
