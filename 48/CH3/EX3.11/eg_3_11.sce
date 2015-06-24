clear;
clc;
disp("x NOR x=(x+x)^");
disp("NOT Gate");
disp("x NOR x=x^x^=x^");
disp("OR Gate");
disp("(x NOR y) NOR (x NOR y) = (x^ NOR y^)^ = x+y");
disp("AND Gate");
disp("(x NOR x) NOR (y NOR y )= x^ NOR y^ = xy");
disp("NAND Gate");
disp(" NOT ((x NOR x) NOR (y NOR y))= NOT (x^ NOR y^) = NOT(xy) = (xy)^");
disp("XOR Gate");
disp("(x^ NOR y^) NOR (x NOR y) = x^y+xy^");
disp("XNOR Gate");
disp("(x^ NOR y) NOR (x NOR y^) = xy+x^y^");
disp("Since every other gate can be implemented using NOR gate it is said to be functionally complete")