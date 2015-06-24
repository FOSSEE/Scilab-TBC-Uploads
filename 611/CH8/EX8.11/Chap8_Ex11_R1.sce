// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-8,Example 11,Page 299
//Title: Volume,Enthalpy and entropy departure using the Peng-Robinson equation of state
//================================================================================================================
clear 
clc

//INPUT
T=427.85;//temperature of n-octane vapour in K
P=0.215;//pressure of n-octane vapour in MPa
T_ref=0;//reference state saturated liquid temperature in degree celsius
h0=0;//enthalpy of saturated liquid in J/mol (reference state)
s0=0;//entropy of saturated liquid in J/molK (reference state)
Tc=569.4;//critical temperature of n-octane in K
Pc=24.97;//critical pressure of n-octane in bar
w=0.398;//acentric factor (no unit)
NBP=398.8;//normal boiling point of n-octane (saturated liquid)
[Cp]=[6.907;741.770*10^-3;-397.204*10^-6;82.629*10^-9;0];//coefficients to compute the isobaric molar heat capacity, where Cp=a+bT+cT^2+dT^3+eT^-2,in J/molK
S=0.9457;//value of S taken from Example (3.16)
b=1.4750*10^-4;//value of the Peng-Robinson constant in m^3/mol from Example (3.16)
v=15.14*10^-3;//volume of saturated vapour in m^3/mol from Example (3.16)
R=8.314;//universal gas constant in J/molK
P_amb=101.325;//pressure at which the normal boiling point is computed in kPa

//CALCULATION

//Step a: Vaporization of n-octane at T_ref
T_ref=T_ref+273.15;//conversion of temperature in K
//calculation of the enthalpy of vaporization using Eq.(7.92)(Clausius-Clayperon equation) in kJ/mol
del_hv=((R*log ((Pc*10^5)/(P_amb*10^3)))/((1/NBP)-(1/Tc)))*10^-3;
P2=P_amb*exp (((del_hv*10^3)/(R))*((1/NBP)-(1/T_ref)));//calculation of the vapour pressure at T_ref using Eq.(7.92)(Clausius-Clayperon equation) in kPa
Tbr=NBP/Tc;//calculation of the reduced normal boiling point (no unit)
//calculation of the enthalpy of vaporization at the normal boiling point using Eq.(7.102)(Riedel's correlation) in kJ/mol
del_hvn=(1.093*R*Tc*(Tbr*(((log (Pc))-1.013)/(0.930-Tbr))))*10^-3;
Tr2=T_ref/Tc;//calculation of the reduced temperature with reference to T_ref (no unit)
//calculation of the enthalpy of vaporization (Step a)at T_ref using Eq.(7.101)(Watson's correlation) in kJ/mol
del_ha=((del_hvn*10^3)*(((1-Tr2)/(1-Tbr))^(0.38)))*10^-3;
del_sa=(del_ha*10^3)/T_ref;//calculation of the entropy change in the conversion from saturated liquid to saturated vapour (Step a) at T_ref in J/molK

//Step b:Change from real state of n-octane at T_ref and P2 to ideal gas state at the same temperature and pressure
alpha=(1+(S*(1-sqrt (Tr2))))^2;//calculation of alpha so as to compute the Peng-Robinson constant (a)
a=(0.45724*(R^2)*(Tc^2)*alpha)/(Pc*10^5);//calculation of the Peng-Robinson constant using Eq.(3.76) in Pa(m^3/mol)^2
//Using the Cardan's method to evaluate Z
A=(a*P2*10^3)/(R*T_ref)^2;//calculation of A to determine alpha,beeta and gaamma by using Eq.(3.25)
B=(b*P2*10^3)/(R*T_ref);//calculation of B to determine alpha,beeta and gaamma by using Eq.(3.26)
alpha=-1+B;//calculation of alpha for Peng-Robinson equation of state using Table (3.2)
beeta=A-(2*B)-(3*B^2);//calculation of beeta for Peng-Robinson equation of state using Table (3.2)
gaamma=-(A*B)+(B^2)+(B^3);//calculation of gaamma for Peng-Robinson equation of state using Table (3.2)
p=beeta-(alpha^2)/3;//calculation of p to determine the roots of the cubic equation using Eq.(3.29)
q=((2*alpha^3)/27)-((alpha*beeta)/3)+gaamma;//calculation of q to determine the roots of the cubic equation using Eq.(3.30)
D=(((q)^2)/4)+(((p)^3)/27);//calculation of D to determine the nature of roots using Eq.(3.31)

if D>0 then
        Z=((-q/2)+(sqrt(D)))^(1/3)+((-q/2)-(sqrt(D)))^(1/3)-(alpha/3);//One real root given by  Eq.(3.32)
else if D==0 then
        Z1=((-2*(q/2))^(1/3))-(alpha/3);//Three real roots and two equal given by Eq.(3.33)
        Z2=((q/2)^(1/3))-(alpha/3);
        Z3=((q/2)^(1/3))-(alpha/3);
        Za=[Z1 Z2 Z3];
        Z=max(Za);
    else
        theta=acos((-(q)/2)*(sqrt((-27)/(((p)^3)))));//calculation of theta in radians using Eq.(3.37)
        r=sqrt((-(p^3)/27));//calculation of r using Eq.(3.38)
        Z1=(2*(r^(1/3))*cos(theta/3))-(alpha/3);
        Z2=(2*(r^(1/3))*cos(((2*%pi)+theta)/3))-(alpha/3);//Three unequal real roots given by Eqs.(3.34,3.35 and 3.36)
        Z3=(2*(r^(1/3))*cos(((4*%pi)+theta)/3))-(alpha/3);
        Za=[Z1 Z2 Z3];
        Z=max(Za);
    end
end
da_dT=(-a*S)/(sqrt (alpha*T_ref*Tc));//calculation of da/dT using Eq.(8.47)
//calculation of the enthalpy departure using Eq.(8.45) in J/mol
dep_h=(R*T_ref*(Z-1))+(((((T_ref*da_dT)-a)/(2*sqrt(2)*b)))*(log ((Z+(B*(1+sqrt (2))))/(Z+(B*(1-sqrt (2)))))));
//calculation of the entropy departure using Eq.(8.46)in J/molK
dep_s=(R*log (Z-B))+((1/(2*sqrt (2)*b))*(da_dT)*(log ((Z+(B*(1+sqrt (2))))/(Z+(B*(1-sqrt (2)))))));
del_hb=-dep_h;//calculation of the enthalpy change corresponding to Step b in J/mol
del_sb=-dep_s;//calculation of the entropy change corresponding to Step b in J/molK

//Step c:Change n-octane in the ideal gas state at T_ref and P2 to n-octane in the ideal gas state at T and P
//Calculation of the enthalpy change corresponding to Step c using Eq.(4.25) in kJ/mol
 del_hc=((Cp(1,:)*(T-T_ref))+(((Cp(2,:))/2)*((T^2)-(T_ref^2)))+(((Cp(3,:))/3)*((T^3)-(T_ref^3)))+(((Cp(4,:))/4)*((T^4)-(T_ref^4)))-((Cp(5,:))*((1/T)-(1/T_ref))))*10^-3;
del_sc=((Cp(1,:))*log (T/T_ref))+((Cp(2,:))*(T-T_ref))+(((Cp(3,:))/2)*((T^2)-(T_ref^2)))+(((Cp(4,:))/3)*((T^3)-(T_ref^3)))-(((Cp(5,:))/2)*((1/(T^2))-(1/(T_ref^2))))-(R*log ((P*10^6)/(P2*10^3)));//calculation of the entropy change corresponding to Step c using Eq.(5.43) in J/molK

//Step d: Change n-octane from the ideal gas state to the real state at T and P
Z=0.9151;//compressibility factor taken from Example (3.16) (no unit)
da_dT=(-a*S)/(sqrt (alpha*T*Tc));//calculation of da/dT using Eq.(8.47)
//calculation of the enthalpy change corresponding to Step d using Eq.(8.45) in J/mol
del_hd=(R*T*(Z-1))+((((T*da_dT)-a)/(2*sqrt(2)*b))*log ((Z+(B*(1+sqrt (2))))/(Z+(B*(1-sqrt (2))))));
//calculation of the entropy change corresponding to Step d using Eq.(8.46)in J/molK
del_sd=(R*log (Z-B))+((1/(2*sqrt (2)*b))*(da_dT)*(log ((Z+(B*(1+sqrt (2))))/(Z+(B*(1-sqrt (2)))))));

h=h0+del_ha+(del_hb*10^-3)+del_hc+(del_hd*10^-3);//calculation of the enthalpy of n-octane vapour at T and P in kJ/mol
s=s0+del_sa+del_sb+del_sc+del_sd;//calculation of the entropy of n-octane vapour at T and P in J/molK

//OUTPUT
mprintf("\n The enthalpy of n-octane vapour at 427.85K and 0.215MPa using the Peng-Robinson equation of state = %f kJ/mol\n",h);
mprintf("\n The entropy of n-octane vapour at 427.85K and 0.215MPa using the Peng-Robinson equation of state = %f J/mol K\n",s);
mprintf("\n The volume of n-octane vapour at 427.85K and 0.215MPa using the Peng-Robinson equation of state = %f m^3/mol\n",v)

//===============================================END OF PROGRAM===================================================

//DISCLAIMER: THE VOLUME OF n-OCTANE VAPOUR AS COMPUTED IN EXAMPLE 3.16 IS 15.14*10^-3 m^3/mol AND NOT 15.41*10^-3 m^3/mol AS PRINTED IN THIS EXAMPLE IN THE TEXTBOOK.

