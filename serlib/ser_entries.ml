(************************************************************************)
(*         *   The Coq Proof Assistant / The Coq Development Team       *)
(*  v      *   INRIA, CNRS and contributors - Copyright 1999-2018       *)
(* <O___,, *       (see CREDITS file for the list of authors)           *)
(*   \VV/  **************************************************************)
(*    //   *    This file is distributed under the terms of the         *)
(*         *     GNU Lesser General Public License Version 2.1          *)
(*         *     (see LICENSE file for the text of the license)         *)
(************************************************************************)

(************************************************************************)
(* Coq serialization API/Plugin                                         *)
(* Copyright 2016-2019 MINES ParisTech                                  *)
(* Written by: Emilio J. Gallego Arias                                  *)
(************************************************************************)
(* Status: Very Experimental                                            *)
(************************************************************************)

open Sexplib.Conv

module Stateid = Ser_stateid
module Future = Ser_future
module Names = Ser_names
module Univ = Ser_univ
module Constr = Ser_constr
module Declarations = Ser_declarations

type local_entry =
  [%import: Entries.local_entry]
  [@@deriving sexp]

type inductive_universes =
  [%import: Entries.inductive_universes]
  [@@deriving sexp]

type one_inductive_entry =
  [%import: Entries.one_inductive_entry]
  [@@deriving sexp]

type mutual_inductive_entry =
  [%import: Entries.mutual_inductive_entry]
  [@@deriving sexp]

type 'a proof_output =
  [%import: 'a Entries.proof_output]
  [@@deriving sexp]

type 'a const_entry_body =
  [%import: 'a Entries.const_entry_body]
  [@@deriving sexp]

type constant_universes_entry =
  [%import: Entries.constant_universes_entry]
  [@@deriving sexp]

type 'a in_constant_universes_entry =
  [%import: 'a Entries.in_constant_universes_entry]
  [@@deriving sexp]

type 'a definition_entry =
  [%import: 'a Entries.definition_entry]
  [@@deriving sexp]

type section_def_entry =
  [%import: Entries.section_def_entry]
  [@@deriving sexp]

type inline =
  [%import: Entries.inline]
  [@@deriving sexp]

type parameter_entry =
  [%import: Entries.parameter_entry]
  [@@deriving sexp]

type 'a constant_entry =
  [%import: 'a Entries.constant_entry]
  [@@deriving sexp]
