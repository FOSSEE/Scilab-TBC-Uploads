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


//Example 13.12
//Caption : Program to Find the Product Composition for Two Reactions

T0=298.16;//[K]
T1=750;//[K]
R=8.314;
P=1.2;//[bar]

//C4H10 --> C2H4 + C2H6  (I)
//C4H10 --> C3H6 + CH4   (II)

//Values From Table C.1 At T=298.15K

A_butane=1.935;
A_ethene=1.424;
A_ethane=1.131;
A_propene=1.637;
A_methane=1.702;

B_butane=36.915*10^-3;
B_ethene=14.394*10^-3;
B_ethane=19.225*10^-3;
B_propene=22.706*10^-3;
B_methane=9.081*10^-3;

C_butane=-11.402*10^-6;
C_ethene=-4.392*10^-6;
C_ethane=-5.561*10^-6;
C_propene=-6.915*10^-6;
C_methane=-2.164*10^-6;

D_butane=0;
D_ethene=0;
D_ethane=0;
D_propene=0;
D_methane=0;

dA_I=A_ethene+A_ethane-A_butane;
dA_II=A_methane+A_propene-A_butane;

dB_I=B_ethene+B_ethane-B_butane;
dB_II=B_methane+B_propene-B_butane;

dC_I=C_ethene+C_ethane-C_butane;
dC_II=C_methane+C_propene-C_butane;

dD_I=D_ethene+D_ethane-D_butane;
dD_II=D_methane+D_propene-D_butane;

// Values from Table C.4 at T=298.15K
H_butane=-125790;//[J/mol]
H_ethene=52510;//[J/mol]
H_ethane=-83820;//[J/mol]
H_propene=19710;//[J/mol]
H_methane=-74520;//[J/mol]

G_butane=-16570;//[J/mol]
G_ethene=68460;//[J/mol]
G_ethane=-31855;//[J/mol]
G_propene=62205;//[J/mol]
G_methane=-50460;//[J/mol]

dHo_I=H_ethene+H_ethane-H_butane
dHo_II=H_methane+H_propene-H_butane

dGo_I=G_ethene+G_ethane-G_butane
dGo_II=G_methane+G_propene-G_butane

I1_I=approx(IDCPH(T0,T1,dA_I,dB_I,dC_I,dD_I),3)
I1_II=approx(IDCPH(T0,T1,dA_II,dB_II,dC_II,dD_II),3)
I2_I=approx(IDCPS(T0,T1,dA_I,dB_I,dC_I,dD_I),5)
I2_II=approx(IDCPS(T0,T1,dA_II,dB_II,dC_II,dD_II),5)

//Using Eqn 13.18
//dG_418/RT=((dGo - dHo)/RTo)+(dHo/RT)+((1/T)*I1)-I2  c1=dG_418/RT

c1_I=approx(((dGo_I-dHo_I)/(R*T0))+(dHo_I/(R*T1))+((1/T1)*I1_I)-I2_I,4)
c1_II=approx(((dGo_II-dHo_II)/(R*T0))+(dHo_II/(R*T1))+((1/T1)*I1_II)-I2_II,4)

K_I=approx(exp(-c1_I),4)
K_II=approx(exp(-c1_II),4)

k=(K_II/K_I)^0.5;
e_I=approx(((K_I/P)/(1+(K_I*(1/P)*(1+k)*(1+k))))^0.5,4);

e_II=approx(k*e_I,4);

n_C4H10=1-e_I-e_II;
n_C2H4=e_I;
n_C2H6=e_I;
n_C3H6=e_II;
n_CH4=e_II;
nt=n_C4H10+n_C2H4+n_C2H6+n_C3H6+n_CH4;

y_C4H10=approx(n_C4H10/nt,4);
y_C2H4=approx(n_C2H4/nt,4);
y_C2H6=approx(n_C2H6/nt,4);
y_C3H6=approx(n_C3H6/nt,4);
y_CH4=approx(n_CH4/nt,4);

y=[y_C4H10 y_C2H4 y_C2H6 y_C3H6 y_CH4];
disp(y,'  Y_C4H10   Y_C2H4    Y_C2H6    Y_C3H6   Y_CH4')

//End