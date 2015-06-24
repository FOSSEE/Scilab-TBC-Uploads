clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 3.4
//Caption : Program To find Q,W,del_U and del_H in a PV Diagram

//Figure
P=[1.35 1.35];
V=[0.24 0.264];
plot2d(V,P,style=2)
V=0.12:0.001:0.24;
P=0.324*V^-1;
plot2d(V,P,style=5)
P=[2.7 2.97];
V=[0.12 0.12];
plot2d(V,P,style=9,rect=[0.1,0.5,0.3,3])
xtitle("Diagram for Ex.3.4","V(m^3)","P(bar)")
legend("(a)","(b)","(c)")
P=[2.97 2.97];
V=[0 0.12];
plot2d(V,P,style=4)
P=[2.7 2.7];
V=[0 0.12];
plot2d(V,P,style=4)
P=[1.35 1.35];
V=[0 0.24];
plot2d(V,P,style=4)
P=[0 2.7];
V=[0.12 0.12];
plot2d(V,P,style=4)
P=[0 1.35];
V=[0.24 0.24];
plot2d(V,P,style=4)
P=[0 1.35];
V=[0.264 0.264];
plot2d(V,P,style=4)

clear;

//Given Values for Nitrogen Gas
m=0.4;//Kg
M=28;//Molecular Mass Of Nitrogen
T1=300.15;//Temp=300.15K(27`C)
Pn=0.35;//Pressure of nitrogen = 0.35bar
Pa=1;//Atm Pressure = 1bar
R=8.314;//J/Mol/K
Cv=(5/2)*R;//J/Mol/K
Cp=(7/2)*R;//J/Mol/K
gama=Cp/Cv;

n=(m/M)*1000;//moles

//Solution

//(a)
//Immersed In ice/water bath
T2=273.15;//Temp=273.15K(0`C)
W_a=-round(n*R*(T2-T1));//Joules
del_H_a=approx(Cp*(T2-T1),0);
Q_a=round(n*del_H_a);
del_U_a=approx((Q_a+W_a)/n,0);
disp('(a)Immersed In ice/water bath')
disp('J',W_a,'work done ')
disp('J',Q_a,'Heat Transferred Q = ')
disp('J',del_U_a,'change in Internal Energy ')
disp('J',del_H_a,'change in enthalpy ')


//(b)
//Isothermal Compression
del_U_b=0;//Isothermal
del_H_b=0;//Isothermal
W_b=-round(n*R*T2*log(1/2));//W=nRTln(V3/V2),here V3/V2=0.5(Given)
Q_b=-W_b;
disp('(b)Isothermal Compression')
disp('J',W_b,'work done by Isothermal Compression ')
disp('J',Q_b,'Heat Transferred Q = ')
disp('J',del_U_b,'change in Internal Energy ')
disp('J',del_H_b,'change in enthalpy ')


//(c)
//constant Vol Process
W_c=0;//const Vol
del_H_c=approx((Cp*(T1-T2))/n,0);
del_U_c=approx(Cv*(T1-T2),0);
Q_c=round(n*del_U_c);
disp('(c)Constant Vol Process')
disp('J',W_c,'work done by Const Vol Process ')
disp('J',Q_c,'Heat Transferred Q = ')
disp('J',del_U_c,'change in Internal Energy ')
disp('J',del_H_c,'change in enthalpy ')


//End