clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  


//Example 7.2
//Caption : program to find the Ratio of Area's in a Nozzle for Diff Pressures

//Given Values
T=573.15;//[K]
P=[700,600,500,400,300,200];//[KPa]
//values for H,V,S for various P from steam tables
H=[3059.8,3020.4,2975.71,2923.5,2859.9,2777.35];//[KJ/Kg]
V=[371.39,418.25,481.26,571.23,711.93,970.04];//[cm^3/g]
S=7.29997*ones(1,6);//[KJ/Kg/K]  Isentropic
u0=30;//[m/s]
u=zeros(1,6);

//Using Eq(7.3)
//u^2=u1^2-2(H-H1)
u=approx(sqrt((u0^2-2*(H-H(1))*10.^3)),1);

//Using Eq(2.27)
//A/A1=u1*V/V1*u;
c=u(1)./V(1);
K=approx((c*V./u),3);//K=A/A1  c=u1/V1

Ans=[P',V',u',K'];
disp(Ans,' P/[KPa] V/[cm^3/g]  u/[m/s]  A/A1')

//End