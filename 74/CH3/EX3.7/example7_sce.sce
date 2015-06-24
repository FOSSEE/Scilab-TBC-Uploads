// chapter 3
// example 3.7
//page 135
A=10;//d.c gain
R1=10000;
F=10000;//input frequency
CfRf=15915*10^-4;
Fa=F/A;
Rf=10*R1;// A=Rf/R1
//Fa=1/(2*3.14*Rf*Cf)
Cf=15915*10^-4/Rf;
disp(Cf)
Rcomp=(R1*Rf)/(R1+Rf);
disp(Rcomp)