clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

function[Q]=IDCPH(T0,T,dA,dB,dC,dD)
  t=T/T0;
  Q=(dA+((dB/2)*T0*(t+1))+((dC/3)*T0*T0*((t^2)+t+1))+(dD/(t*T0*T0)))*(T-T0)
  funcprot(0);
endfunction

function[Q]=IDCPS(T0,T,dA,dB,dC,dD)
  t=T/T0;
  Q=((dA)*log(t))+(((dB*T0)+(((dC*T0*T0)+(dD/(t*t*T0*T0)))*(t+1)/2))*(t-1))
  funcprot(0);
endfunction

function[si]=PHIB(Tr,Pr,omega)
  B0=0.083-(0.422/(Tr^1.6));
  B1=0.139-(0.172/(Tr^4.2));
  si=exp((Pr/Tr)*(B0+(omega*B1)));
  funcprot(0);
  
endfunction


//Example 13.6
//Caption : Program to find the Maximum Conversion of Ethylene to ethanol

T0=298.16;//[K]
T1=523.15;//[K]
P=35;//[bar]
R=8.314;

//C2H4(g) + H2O(g) -->  C2H5OH(g)
//Values From Table C.1 At T=298.15K

A_ethanol=3.518;
A_ethene=1.424;
A_water=3.470;

B_ethanol=20.001*10^-3;
B_ethene=14.394*10^-3;
B_water=1.450*10^-3;

C_ethanol=-6.002*10^-6;
C_ethene=-4.392*10^-6;
C_water=0;

D_ethanol=0;
D_ethene=0;
D_water=0.121*10^5;

dA=A_ethanol-A_ethene-A_water
dB=B_ethanol-B_ethene-B_water
dC=C_ethanol-C_ethene-C_water
dD=D_ethanol-D_ethene-D_water

// Values from Table C.4 at T=298.15K
H_ethanol=-235100;//[J/mol]
H_ethene=52510;//[J/mol]
H_water=-241572;//[J/mol]

G_ethanol=-168490;//[J/mol]
G_ethene=68460;//[J/mol]
G_water=-228572;//[J/mol]

dHo=H_ethanol-H_ethene-H_water
dGo=G_ethanol-G_ethene-G_water

I1=approx(IDCPH(T0,T1,dA,dB,dC,dD),3)
I2=approx(IDCPS(T0,T1,dA,dB,dC,dD),5)

//Using Eqn 13.18
//dG_418/RT=((dGo - dHo)/RTo)+(dHo/RT)+((1/T)*I1)-I2  c1=dG_418/RT

c1=approx(((dGo-dHo)/(R*T0))+(dHo/(R*T1))+((1/T1)*I1)-I2,4)
K_523=approx(exp(-c1),4);
disp('X 10^-3',approx(K_523*1000,3),'Equilibrium Constant at T = 523.15K is ')

//Values Frm App B
Tc=[282.3,647.1,513.9];
Pc=[50.4,220.55,61.48];
omega=[0.087,0.345,0.645];

Tr=approx(T1./Tc,3);
Pr=approx(P./Pc,3);
si=approx(PHIB(Tr,Pr,omega),3);

//Using eqn
//(y_ETOH*si_ETOH)/(y_C2H4*si_C2H4*y_H20*si_H2O)=(P/Po)K
//y_ETOH/(y_C2H4*y_H20)=c=((si_C2H4*si_H2O)/si_ETOH)(P/Po)K
c=approx(((si(1)*si(2))/si(3))*(P*K_523),3)

//y_C2H4 = (1-e)/(6-e) 
//y_ETOH = (5-e)/(6-e)
//y_H2O = (e)/(6-e)

//Solving we get a Eqn   
poly([1.342 -6 1],'e','c')
root=approx(roots(poly([1.342 -6 1],'e','c')),3)

r=root(1)*100;
//Since e > 1 not possible so e=0.233

disp('%',r,'The Maximum Conversion of ethylene to ethanol by Vapor-Phase Hydration is ')

//End