(* $Id$ *)

(* Embedding xpm data into an ML file *)

let openfile = [|
(* width height num_colors chars_per_pixel *)
"    20    19       66            2";
(* colors *)
".. c None";
".# c #000000";
".a c #dfdfdf";
".b c #7f7f7f";
".c c #006f6f";
".d c #00efef";
".e c #009f9f";
".f c #004040";
".g c #00bfbf";
".h c #ff0000";
".i c #ffffff";
".j c #7f0000";
".k c #007070";
".l c #00ffff";
".m c #00a0a0";
".n c #004f4f";
".o c #00cfcf";
".p c #8f8f8f";
".q c #6f6f6f";
".r c #a0a0a0";
".s c #7f7f00";
".t c #007f7f";
".u c #5f5f5f";
".v c #707070";
".w c #00f0f0";
".x c #009090";
".y c #ffff00";
".z c #0000ff";
".A c #00afaf";
".B c #00d0d0";
".C c #00dfdf";
".D c #005f5f";
".E c #00b0b0";
".F c #001010";
".G c #00c0c0";
".H c #000f0f";
".I c #00007f";
".J c #005050";
".K c #002f2f";
".L c #dfcfcf";
".M c #dfd0d0";
".N c #006060";
".O c #00e0e0";
".P c #00ff00";
".Q c #002020";
".R c #dfc0c0";
".S c #008080";
".T c #001f1f";
".U c #003f3f";
".V c #007f00";
".W c #00000f";
".X c #000010";
".Y c #00001f";
".Z c #000020";
".0 c #00002f";
".1 c #000030";
".2 c #00003f";
".3 c #000040";
".4 c #00004f";
".5 c #000050";
".6 c #00005f";
".7 c #000060";
".8 c #00006f";
".9 c #000070";
"#. c #7f7f80";
"## c #9f9f9f";
(* pixels *)
"........................................";
"........................................";
"........................................";
".......................#.#.#............";
".....................#.......#...#......";
"...............................#.#......";
".......#.#.#.................#.#.#......";
".....#.y.i.y.#.#.#.#.#.#.#..............";
".....#.i.y.i.y.i.y.i.y.i.#..............";
".....#.y.i.y.i.y.i.y.i.y.#..............";
".....#.i.y.i.y.#.#.#.#.#.#.#.#.#.#.#....";
".....#.y.i.y.#.s.s.s.s.s.s.s.s.s.#......";
".....#.i.y.#.s.s.s.s.s.s.s.s.s.#........";
".....#.y.#.s.s.s.s.s.s.s.s.s.#..........";
".....#.#.s.s.s.s.s.s.s.s.s.#............";
".....#.#.#.#.#.#.#.#.#.#.#..............";
"........................................";
"........................................";
"........................................" |]

open GMain

let main () =
  let w = new GWindow.window border_width:2 in
  w#misc#realize ();
  let hbox = new GPack.box `HORIZONTAL spacing:10 packing:w#add in
  let pm =
    new GdkObj.pixmap_from_xpm_d data:openfile window:w#misc#window in
  new GPix.pixmap pm packing:hbox#add;
  new GMisc.label text:"Embedded xpm" packing:hbox#add;
  w#show ();
  w#connect#destroy callback:Main.quit;
  Main.main ()

let () = main ()
