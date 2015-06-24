clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

function[Q]=MCPS(T0,T,A,B,C,D)
  t=T/T0;
  Q=(A)+(((B*T0)+(((C*T0*T0)+(D/(t*t*T0*T0)))*(t+1)/2))*((t-1)/log(t)))
  funcprot(0);
endfunction
    
function[Q]=MCPH(T0,T,A,B,C,D)
  t=T/T0;
  Q=(A+((B/2)*T0*(t+1))+((C/3)*T0*T0*((t^2)+t+1))+(D/(t*T0*T0)))
  funcprot(0);
endfunction
    
//Example 15.1
//Caption : Program to do a Thermodynamic Analysis of Steam Power Plant

State=['Supercooled Liquid','Superheated Vapor','Wet Vapor,x=0.9378','Saturated Liqiud'];
T=[318.98 773.15 318.98 318.98];
P=[8600 8600 10 10];
H=[203.4 3391.6 2436 191.8];
S=[0.6580 6.6858 7.6846 0.6493];
T0=298.15;
T1=460;//[K]
R=8.314;
T_sigma=T0;
//CH4 + 2O2 --> CO2 + 2H2O
dH_CO2=-393509;
dH_H2O=-241818;
dH_CH4=-74520;

dG_CO2=-394359;
dG_H2O=-228572;
dG_CH4=-50460;

dH_298=dH_CO2+(2*dH_H2O)-dH_CH4
dG_298=dG_CO2+(2*dG_H2O)-dG_CH4

dS_298=approx((dH_298-dG_298)/T0,3);

//Moles Entering
ni_O2=2*1.25;
ni_N2=approx(ni_O2*(79/21),3);
ni=ni_O2+ni_N2;

//Moles After Combustion
n_CO2=1;
n_H2O=2;
n_O2=0.5;
n_N2=ni_N2;
n=n_CO2+n_H2O+n_O2+n_N2;
m=[n_CO2 n_H2O n_N2 n_O2];

y_CO2=approx(n_CO2/n,4);
y_H2O=approx(n_H2O/n,4);
y_O2=approx(n_O2/n,4);
y_N2=approx(n_N2/n,4);

y=[y_CO2 y_H2O y_O2 y_N2];
yT=sum(y);

//Step(a)
dH_a=0
dS_a=approx(ni*R*((0.21*log(0.21))+(0.79*log(0.79))),3)//[J/K]

//Step(b)
dH_b=dH_298
dS_b=dS_298//[J/K]

//Step(c)
dH_c=0
dS_c=approx(-n*R*sum(y.*log(y)),3)//[J/K]

//Step(d)
//For CO2
CpH_CO2=approx(R*MCPH(T0,T1,5.457,1.045*(10^-3),0,-1.157*(10^5)),3);
//For H2O
CpH_H2O=approx(R*MCPH(T0,T1,3.470,1.450*(10^-3),0,0.121*(10^5)),3);
//For O2
CpH_O2=approx(R*MCPH(T0,T1,3.639,0.506*(10^-3),0,-0.227*(10^5)),3);
//For N2
CpH_N2=approx(R*MCPH(T0,T1,3.280,0.593*(10^-3),0,0.040*(10^5)),3);

//For CO2
CpS_CO2=approx(R*MCPS(T0,T1,5.457,1.045*(10^-3),0,-1.157*(10^5)),3);
//For H2O
CpS_H2O=approx(R*MCPS(T0,T1,3.470,1.450*(10^-3),0,0.121*(10^5)),3);
//For O2
CpS_O2=approx(R*MCPS(T0,T1,3.639,0.506*(10^-3),0,-0.227*(10^5)),3);
//For N2
CpS_N2=approx(R*MCPS(T0,T1,3.280,0.593*(10^-3),0,0.040*(10^5)),3);

CpH=[CpH_CO2 CpH_H2O CpH_N2 CpH_O2];
CpS=[CpS_CO2 CpS_H2O CpS_N2 CpS_O2];

Comp=['CO2' 'H2O' 'N2' 'O2'];

Ans=[CpH',CpS'];
disp(Ans,'    CpH      CpS',Comp')

CpHt=approx(sum(m.*CpH),3)//[J/K]
CpSt=approx(sum(m.*CpS),3)//[J/K]

dH_d=approx(CpHt*(T1-T0),0)//[J]
dS_d=approx((CpSt*log(T1/T0)),3)//[J/K]

dH=dH_a+dH_b+dH_c+dH_d//[J]
dS=dS_a+dS_b+dS_c+dS_d//[J/K]

rm=84.75;//[kg/s]

rn_CH4=approx((rm*(H(1)-H(2))*1000)/dH,2)//[mol/s]

rW_ideal=approx(rn_CH4*((dH/1000)-(T0*dS/1000))/1000,2)*1000//[KW]

//(a)  Furnace/Boiler
rS_a=approx((rn_CH4*dS/1000)+(rm*(S(2)-S(1))),2)//[kJ/s/K]

rW_a=approx(T_sigma*rS_a/1000,2)*1000//[kW]

//(b) Turbine
rS_b=approx(rm*(S(3)-S(2)),2)//[kW/K]

rW_b=approx(T_sigma*rS_b/1000,2)*1000//[kW]

//(c) Condenser 
Q_c=H(4)-H(3);//[kJ/kg]
rQ_c=approx(rm*Q_c/1000,1)*1000//[kJ/s]
rS_c=approx((rm*(S(4)-S(3)))-(rQ_c/T_sigma),2)//[kW/K]
rW_c=approx(T_sigma*rS_c/1000,2)*1000//[kW]

//(d) Pump
rS_d=approx(rm*(S(1)-S(4)),2)//[kW/K]
rW_d=approx(T_sigma*rS_d/1000,2)*1000//[kW]

rS=[rS_a rS_b rS_c rS_d];
pS=approx(rS/sum(rS)*100,1);
T=[sum(rS) sum(pS)];
Process=['Furnace/boiler' 'Turbine' 'Condenser' 'Pump'];
Ans=[rS',pS'];
disp(Ans,'   S(kW/K)   %',Process')
disp(T)
rW_ideal=80000;
rW=[rW_ideal rW_a rW_b rW_c rW_d]/1000;
pW=approx(rW/sum(rW)*100,1);
T=[sum(rW) sum(pW)];
Process=['Ideal' 'Furnace/boiler' 'Turbine' 'Condenser' 'Pump'];
Ans=[rW',pW'];
disp(Ans,' W(kW/K)*10^-3   %',Process')
disp(T)

eta=pW(1);

disp('%',eta,'Efficiency of the power plant is')

//End