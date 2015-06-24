clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  


//Example 7.3
//Caption : Program to Find the Critical Pressure and the Discharge Pressure

//Given Values
T1=573.15;//[K]
R=8314;
P1=700;//[KPa]
M=18.015;
Gamma=1.3;
u0=30;//[m/s]

//(a)
//Using Eqn(7.12)
//K=P2/P1=(2/(Gamma+1))^(Gamma/(Gamma-1))
K=approx((2/(Gamma+1))^(Gamma/(Gamma-1)),2);//rounding to 2 decimal places

P1V1=round(R*T1/M);//m^2/s^2
//Using Eqn(7.11)
//u_throat^2=u^2+2(Gamma)(P1V1)/(Gamma-1)[1-(P2/P1)^((Gamma-1)/Gamma))]
u_throat=approx(sqrt(u0^2+((2*Gamma*P1V1/(Gamma-1))*(1-(K^((Gamma-1)/Gamma))))),2);

disp(K,'(a)Critical Pressure ratio(P2/P1)')
disp('  m/s',u_throat,'  Velocity at the throat')

//(b)Mach No 2.0
u=2*u_throat;
K=(1-((u^2-u0^2)*(Gamma-1)/(2*Gamma*P1V1)))^(Gamma/(Gamma-1));//K=P2/P1
P2=round(K*P1);

disp('KPa',P2,'(b)Discharge Pressure for Mach Number of 2.0')

//End