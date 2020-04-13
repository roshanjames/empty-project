open! Core
open! Async
open! Import

let%expect_test "" =
  let%bind () = Main.f ~silent:false () in
  let%bind () = [%expect{| hello |}] in
  return ()
;;

let%expect_test "" =
  let%bind () = Main.f ~silent:true () in
  let%bind () = [%expect{| |}] in
  return ()
;;
