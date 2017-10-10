clc;
Rf=120000;
Rin=1500;
AcL=(Rf/Rin)+1;
av=1/AcL;
AoL=150000;
A=1+av*AoL;
disp('Feedback factor',A,"A=");//The answers vary due to round off error
