// Example 6.1 //inernal quantum efficiency
clc;
clear;
close;
tr=2.5;//radiative recombination time in milli second
tnr=50;//non radiative recombination time in milli second
t=(tr*tnr)/(tr+tnr);//Bulk recombination life time in millisecond
nint= (t/tr)
disp(nint*100,"inernal quantum efficiency is(%) ")
