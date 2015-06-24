clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 3.9
//Caption : Program to Find Molar Volume of n-Butane by Various Eqn
//Given Values
T=510;//Temp=510K
P=25;//Pressure=25bar
R=0.08314;

//(a)
//By the Ideal-gas Equation

V=approx(R*T/P,4);//m^3/kmol
disp('(a)By the Ideal-gas Equation')
disp('m^3/kmol',V,'The Molar Volume is ')

//(b)
//The Generalized compressibility-factor Correlation
Tc=425.1;//From App.B
Pc=37.96;//From App.B
Tr=approx(T/Tc,1);
Pr=approx(P/Pc,3)
//Interpolation in Tables E.1 and E.2 then provides
Z0=0.865;
Z1=0.038;
w=0.200;
Z=Z0+(w*Z1);
V=approx(Z*R*T/P,2);//m^3/kmol
disp('(b)The Generalized compressibility-factor Correlation')
disp('m^3/kmol',V,'The Molar Volume is ')

//(c)
//The Generalized Virial-coefficient Correlation
B0=0.083-(0.422/(Tr^1.6));//Eqn (3.61)
B1=0.139-(0.172/(Tr^4.2));//Eqn (3.62)
K=approx(B0+(w*B1),3)//K=BPc/RTc By Eqn (3.59)
//By Eqn(3.58)
Z=approx(1+(K*Pr/Tr),3)
V=approx(Z*R*T/P,4);//m^3/kmol
disp('(c)The Generalized Virial-coefficient Correlation')
disp('m^3/kmol',V,'The Molar Volume is ')

//End