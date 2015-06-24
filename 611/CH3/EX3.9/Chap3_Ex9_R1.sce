// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-3,Example 9,Page 60
//Title:Volume using Redlich-Kwong equation of state by implementing Cardan's method
//================================================================================================================
clear 
clc

//INPUT
T=427.85;//temperature in K
P=0.215;//saturation pressure in MPa
R=8.314;//universal gas constant in (Pa m^3)/(mol K)
Pc=24.97;//critical pressure of n-octane in bar
Tc=569.4;//critical temperature of n-octane in K

//CALCULATION
a=(0.42748*R^2*Tc^2.5)/(Pc*100*10^3*sqrt(T));//calculation of Redlich-Kwong constant in (m^6 Pa mol^-2)
b=(0.08664*R*Tc)/(Pc*100*10^3);//calculation of Redlich-Kwong constant in m^3/mol
//The Cardan's method simplifies the equation of state into a cubic equation which can be solved easily
//The general form of the cubic equation is (Z^3)+(alpha*Z^2)+(beeta*Z)+gaamma=0, where alpha,beeta and gaamma are determined using established relations

A=(a*P*10^6)/(R*T)^2;//calculation of A to determine alpha,beeta and gaamma by using Eq.(3.25)
B=(b*P*10^6)/(R*T);//calculation of B to determine alpha,beeta and gaamma by using Eq.(3.26)
alpha=-1;//calculation of alpha for Redlich-Kwong equation of state using Table (3.2)
beeta=A-B-B^2;//calculation of beeta for Redlich-Kwong equation of state using Table (3.2)
gaamma=-(A*B);//calculation of gaamma for Redlich-Kwong equation of state using Table (3.2)
p=beeta-(alpha^2)/3;//calculation of p to determine the roots of the cubic equation using Eq.(3.29)
q=((2*alpha^3)/27)-((alpha*beeta)/3)+gaamma;//calculation of q to determine the roots of the cubic equation using Eq.(3.30)
D=(((q)^2)/4)+(((p)^3)/27);//calculation of D to determine the nature of roots using Eq.(3.31)

if D>0 then
        Z=((-q/2)+(sqrt(D)))^(1/3)+((-q/2)-(sqrt(D)))^(1/3)-(alpha/3);//One real root given by  Eq.(3.32)
        vf=((Z)*R*T)/(P*10^6);//Volume of saturated liquid calculated as vf=(Z*R*T)/P in m^3/mol
        vg=((Z)*R*T)/(P*10^6);//Volume of saturated vapour calculated as vg=(Z*R*T)/P in m^3/mol
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
mprintf('\n The volume occupied by n-octane (saturated vapour) using Redlich-Kwong equation of state= %f m^3/mol\n',vg);
mprintf('\n The volume occupied by n-octane (saturated liquid) using Redlich-Kwong equation of state= %f m^3/mol\n',vf);

//===============================================END OF PROGRAM===================================================

//DISCLAIMER:THE COMPUTED VALUE OF Z2 IS 0.0147 AND NOT 0.0163 AS PRINTED IN THE TEXTBOOK. THIS HAS BEEN CORRECTED IN THE ABOVE PROGRAM.
