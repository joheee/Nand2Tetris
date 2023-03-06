// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/02/HalfAdder.tst

load HalfAdder.hdl,
output-file HalfAdder.out,
compare-to HalfAdder.cmp,
output-list first%B3.1.3 second%B3.1.3 summary%B3.1.3 carrier%B3.1.3;

set first 0,
set second 0,
eval,
output;

set first 0,
set second 1,
eval,
output;

set first 1,
set second 0,
eval,
output;

set first 1,
set second 1,
eval,
output;
