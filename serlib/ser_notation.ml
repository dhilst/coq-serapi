(************************************************************************)
(*  v      *   The Coq Proof Assistant  /  The Coq Development Team     *)
(* <O___,, *   INRIA - CNRS - LIX - LRI - PPS - Copyright 1999-2016     *)
(*   \VV/  **************************************************************)
(*    //   *      This file is distributed under the terms of the       *)
(*         *       GNU Lesser General Public License Version 2.1        *)
(************************************************************************)

(************************************************************************)
(* Coq serialization API/Plugin                                         *)
(* Copyright 2016 MINES ParisTech                                       *)
(************************************************************************)
(* Status: Very Experimental                                            *)
(************************************************************************)

open Sexplib.Std

open Ser_ppextend

type unparsing_rule =
  [%import: Notation.unparsing_rule
  [@with
     Ppextend.unparsing  := unparsing;
     Ppextend.precedence := precedence
  ]]
  [@@deriving sexp]

type extra_unparsing_rules =
  [%import: Notation.extra_unparsing_rules]
  [@@deriving sexp]
