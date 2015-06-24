clear;
clc;

//Example 3.2
//Caption : Program to Find Work,Heat,del H,del H

//Given Values for the Gas

//Figure
P=[1 5];
V=[25 25];
plot2d(V,P,style=1)

V=5:0.5:25;
P=25*V^-1;
plot2d(V,P,style=2)
P=P^1.4;
plot2d(V,P,style=3)
P=[5 9.52];
V=[5 5];
plot2d(V,P,style=3,rect=[0,0,30,10])
xtitle("Diagram for Ex.3.2","V x 10^3(m^3)","P(bar)")
legend("(a)","(b)","(c)")
P=[5 5];
V=[5 25];
plot2d(V,P,style=1)

clear;
//Initial Stage
P1=1;//Pressure=1bar
T1=298.15;//Temp1=298.15K(25`C)

//Final Stage
P2=5;//Pressure=1bar
//Temp same as Temp1(Isothermal)

R=8.314;//J/Mol/K
Cv=(5/2)*R;//J/Mol/K
Cp=(7/2)*R;//J/Mol/K

//(a)
//Const Vol follwd by const Pressure
T2=T1*(P2/P1);
//By Eq 2.23
del_T=T2-T1;
Q1=Cv*(T2-T1);//Heat at const Vol
Q2=Cp*(T1-T2);//Heat at const pressure

Q_a=round(Q1+Q2);
W_a=-Q_a;//W=del_U-Q,here del_U=0
disp('       (a) Heating at constant volume Followed by cooling at constant Pressure')
disp('J',W_a,'work done by heating at const vol followed by const Pressure ')

disp('J',Q_a,'Heat Transferred Q ') 

disp('change in Internal Energy and enthalpy = 0')

//(b)
//Isothermal Compression
//By Eq. (3.26)
Q_b=round(R*T1*log(P1/P2));
W_b=-Q_b;
disp('       (b) Isothermal compression')

disp('J',W_b,'work done by Isothermal compression ')
disp('J',Q_b,'Heat Transferred Q')
disp('change in Internal Energy and enthalpy = 0')

//(c)
//Adiabatic compression
gama=Cp/Cv;
V1=(R*T1)/(P1^(10^5));
V2=V1*(P1/P2);
T2_c=T1*((V1/V2)^(gama-1));//Kelvin(K)
P2_c=P1*((V1/V2)^gama);//bar
//Using Eq. (3.31)
W_c=round(Cv*(T2_c-T1));//W=Cv*del_T(Joules)
Q_c=-W_c;

disp('       (c) Adiabatic compression followed by cooling at constant Volume')

disp('J',W_c,'work done by Adiabatic compression Followed by Cooling at const Vol ')

disp('J',Q_c,'Heat Transferred Q')
disp('change in Internal Energy and enthalpy = 0')

//End