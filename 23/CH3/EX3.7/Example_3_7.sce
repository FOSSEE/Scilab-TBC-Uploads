clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 3.7
//Caption : Program to Find V and Z for isopropyl vapor

//Given Values
T=473.15;//Temp=473.15k(200`C)
P=10;//Pressure=10bar
B=-0.388;//Viral Coefficient(m^3/Kmol)
C=-26*(10^(-3));//Viral Coefficient(m^6/(kmol)^2)
//Calculate V and Z for isopropyl vapor

//Solution

R=83.14*(10^(-3));//m^3bar/Kmol/K

//(a)
//Ideal Gas equation
V_a=approx((R*T)/P,3);
Z_a=1;//Ideal Gas
disp('(a) By Ideal gas Equation')
disp('m^3/kmol',V_a,'V = ')
disp(Z_a,'Z = ')

//(b)
//Using Eqution 3.37 -> Z=PV/RT=1+BP/RT
V_b=approx((R*T/P)+B,3);
Z_b=approx(P*V_b/(R*T),4);
disp('(b) Using Eqution 3.37 -> Z=PV/RT=1+BP/RT')
disp('m^3/kmol',V_b,'V = ')
disp(Z_b,'Z = ')

//(c)
//Using Equation 3.39 -> Z=PV/RT=1+(B/V)+(C/(V^2))
//Iterations
a=V_a;//Initial
i=-1;
while(i==-1)
   b=((R*T/P)*(1+(B/a)+(C/(a^2))));
   c=abs(b-a)
   if(c<=0.0001)
     i=1;
     break;
   end
   a=b;
end

V_c=approx(b,3);
Z_c=approx(P*V_c/(R*T),4);
//Ans
disp('(c) Using Equation 3.39 -> Z=PV/RT=1+(B/V)+(C/(V^2))')
disp('m^3/kmol',V_c,'V = ')
disp(Z_c,'Z = ')

//End