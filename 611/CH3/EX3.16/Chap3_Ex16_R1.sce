// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-3,Example 16,Page 78
//Title:Volume using Peng-Robinson equation of state
//================================================================================================================
clear 
clc

//INPUT
T=427.85;//temperature in K
P=0.215;//saturation pressure in MPa
Tc=569.4;//critical temperature of n-octane in K
Pc=24.97;//critical pressure of n-octane in bar
w=0.398;//acentric factor (no unit) 
R=8.314;//universal gas constant in (Pa m^3)/(mol K)

//CALCULATION
//The Cardan's method simplifies the equation of state into a cubic equation which can be solved easily
//The general form of the cubic equation is (Z^3)+(alpha*Z^2)+(beeta*Z)+gaamma=0, where alpha,beeta and gaamma are determined using established relations

Tr=T/Tc;//calculation of reduced temperature (no unit)
Pr=(P*10^6)/(Pc*10^5);//calculation of reduced pressure (no unit)
S=0.37464+(1.54226*w)-(0.26992*w^2);//calculation of S using Eq.(3.79)
alpha1=(1+(S*(1-sqrt(Tr))))^2;//calculation of alpha1 using Eq.(3.78)
a=(0.45724*R^2*Tc^2*alpha1)/(Pc*10^5);//calculation of the Peng-Robinson constant in (m^6 Pa mol^-2) using Eq.(3.76)
b=(0.07780*R*Tc)/(Pc*10^5);//calculation of the Peng-Robinson constant in m^3/mol using Eq.(3.77)
A=(a*P*10^6)/(R*T)^2;//calculation of A to determine alpha,beeta and gaamma by using Eq.(3.25)
B=(b*P*10^6)/(R*T);//calculation of B to determine alpha,beeta and gaamma by using Eq.(3.26)
alpha=-1+B;//calculation of alpha for Peng-Robinson equation of state using Table (3.2)
beeta=A-(2*B)-(3*B^2);//calculation of beeta for Peng-Robinson equation of state using Table (3.2)
gaamma=-(A*B)+(B^2)+(B^3);//calculation of gaamma for Peng-Robinson equation of state using Table (3.2)
p=beeta-(alpha^2)/3;//calculation of p to determine the roots of the cubic equation using Eq.(3.29)
q=((2*alpha^3)/27)-((alpha*beeta)/3)+gaamma;//calculation of q to determine the roots of the cubic equation using Eq.(3.30)
D=(((q)^2)/4)+(((p)^3)/27);//calculation of D to determine the nature of roots using Eq.(3.31)

if D>0 then
        Z=((-q/2)+(sqrt(D)))^(1/3)+((-q/2)-(sqrt(D)))^(1/3)-(alpha/3);//One real root given by  Eq.(3.32)
        vf=((Z)*R*t)/(P*10^6);//Volume of saturated liquid calculated as vf=(Z*R*T)/P in m^3/mol
        vg=((Z)*R*t)/(P*10^6);//Volume of saturated vapour calculated as vg=(Z*R*T)/P in m^3/mol
else if D==0 then
        Z1=((-2*(q/2))^(1/3))-(alpha/3);//Three real roots and two equal given by Eq.(3.33)
        Z2=((q/2)^(1/3))-(alpha/3);
        Z3=((q/2)^(1/3))-(alpha/3);
        Z=[Z1 Z2 Z3];
        vf=(min(Z)*R*T)/(P*10^6);//Volume of saturated liquid calculated as vf=(Z*R*T)/P in m^3/mol
        vg=(max(Z)*R*T)/(P*10^6);//Volume of saturated vapour calculated as vg=(Z*R*T)/P in m^3/mol
    else
        r=sqrt((-(p^3)/27));//calculation of r using Eq.(3.38)
        theta=acos((-(q)/2)*(1/r));//calculation of theta in radians using Eq.(3.37)
        Z1=(2*(r^(1/3))*cos(theta/3))-(alpha/3);
        Z2=(2*(r^(1/3))*cos(((2*%pi)+theta)/3))-(alpha/3);//Three unequal real roots given by Eqs.(3.34,3.35 and 3.36)
        Z3=(2*(r^(1/3))*cos(((4*%pi)+theta)/3))-(alpha/3);
        Z=[Z1 Z2 Z3];
        vf=(min(Z)*R*T)/(P*10^6);//Volume of saturated liquid calculated as vf=(Z*R*T)/P in m^3/mol
        vg=(max(Z)*R*T)/(P*10^6);//Volume of saturated vapour calculated as vg=(Z*R*T)/P in m^3/mol

    end
end

//OUTPUT
mprintf('\n The volume occupied by n-octane (saturated vapour) obtained by Peng-Robinson equation of state= %f m^3/mol\n',vg);
mprintf('\n The volume occupied by n-octane (saturated liquid) obtained by Peng-Robinson equation of state= %f m^3/mol\n',vf);



//===============================================END OF PROGRAM===================================================
