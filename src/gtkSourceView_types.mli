(*********************************************************************************)
(*                                                                               *)
(*   lablgtksourceview, OCaml binding for the GtkSourceView text widget          *)
(*                                                                               *)
(*   Copyright (C) 2005  Stefano Zacchiroli <zack@cs.unibo.it>                   *)
(*   Copyright (C) 2006  Stefano Zacchiroli <zack@cs.unibo.it>                   *)
(*                       Maxence Guesdon <maxence.guesdon@inria.fr>              *)
(*                                                                               *)
(*   This library is free software; you can redistribute it and/or modify        *)
(*   it under the terms of the GNU Lesser General Public License as              *)
(*   published by the Free Software Foundation; either version 2.1 of the        *)
(*   License, or (at your option) any later version.                             *)
(*                                                                               *)
(*   This library is distributed in the hope that it will be useful, but         *)
(*   WITHOUT ANY WARRANTY; without even the implied warranty of                  *)
(*   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU           *)
(*   Lesser General Public License for more details.                             *)
(*                                                                               *)
(*   You should have received a copy of the GNU Lesser General Public            *)
(*   License along with this library; if not, write to the Free Software         *)
(*   Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307         *)
(*   USA                                                                         *)
(*                                                                               *)
(*********************************************************************************)

(*
 * lablgtksourceview, OCaml binding for the GtkSourceView text widget
 *
 * Copyright (C) 2005  Stefano Zacchiroli <zack@cs.unibo.it>
 *
 * This library is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as
 * published by the Free Software Foundation; either version 2.1 of the
 * License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307
 * USA
 *)

type source_tag_style = [`sourcetagstyle]
type source_tag = [`texttag|`sourcetag]
type source_tag_table = [`texttagtable |`sourcetagtable]
type source_style_scheme = [`sourcestylescheme]
type source_view = [Gtk.text_view|`sourceview]
type source_marker = [`sourcemarker]
type source_buffer = [`textbuffer|`sourcebuffer]
type source_language = [`sourcelanguage]
type source_languages_manager = [`sourcelanguagesmanager]
