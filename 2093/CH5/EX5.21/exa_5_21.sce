// Exa 5.21
clc;
clear;
close;
// Given data
// Part (a)
PerError= 1;// in %
A= 10^5;// (Assumed value)
ABita= 1/PerError*100;
Bita= 1/(PerError*A);
disp("% error               A                   Aß                   1+Aß")
disp(string(PerError)+"                    "+string(A)+"              "+string(ABita)+"                    "+string(1+ABita))
// Part (b)
PerError= 5;// in %
ABita= 1/PerError*100;
Bita= 1/(PerError*A);
disp(string(PerError)+"                    "+string(A)+"               "+string(ABita)+"                      "+string(1+ABita))
// Part (c)
PerError= 50;// in %
ABita= 1/PerError*100;
Bita= 1/(PerError*A);
disp(string(PerError)+"                  "+string(A)+"               "+string(ABita)+"                         "+string(1+ABita))
