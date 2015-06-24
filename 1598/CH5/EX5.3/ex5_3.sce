clc;
V=200;  //voltage in volt
R=100;  //resistance in Ohm
e=1.6*10^-19;  //charge on an electron in C
I=V/R;     //Ohm's law
t=1;  //time in second
q=I*t;  //calculating charge
n=q/e;  //calculating no of electrons
disp(n,"No. of electrons = ");  //displaying result