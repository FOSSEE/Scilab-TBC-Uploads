

//exapple 2.18 
clc; funcprot(0);
// Initialization of Variable
H=600;
f=150/1000;
s=H/f;
b=6.375/100;
h1=0;
h2=120;//height of chimney
B=s*b;//datum elevation
p1=B*f*1000/(H-h1);
p2=B*f*1000/(H-h2);
delp=p2-p1;
delh=H*delp/1000/(b+delp/1000);
disp(delh,"parallax height of the chimney in (m):");
clear
