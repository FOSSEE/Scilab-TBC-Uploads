// example no.-3.4,page no.-88.
// program to find input impedence and SWR of line.
clc
clear
exec("DEPENDENCIES/reflection_coefficient.sci");
exec("DEPENDENCIES/swr.sci");
exec("DEPENDENCIES/input_impedence.sci");
Zo=75;Zl=37.5+75*%i;l=0.02;eipsilar=2.56;f=3*10^9;c=3*10^8;
b=(2*%pi*f*sqrt(eipsilar))/c;  // beta
tao=reflection_coefficient(Zl,Zo);
Zin=input_impedence(tao,b,l,Zo);
// result
disp(Zin,'input impedence = ')
tao=abs(tao);
s=VSWR(tao);
// result
disp(s,'SWR of the line = ')