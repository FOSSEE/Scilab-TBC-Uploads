// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-9,Example 20,Page 344
//Title: Fugacity coefficients of the components in a mixture using Redlich-Kwong Equation of state
//================================================================================================================
clear 
clc

//INPUT
T=600;//temperature of the equimolar n-butane and n-octane mixture in K
P=16;//pressure of the equimolar n-butane and n-octane mixture in bar
Tc=[425.2;569.4];//critical temperature of n-butane and n-octane in K
Pc=[37.97;24.97];//critical pressure of n-butane and n-octane in bar
R=8.314;//universal gas constant in J/molK

//CALCULATION
//For convenience, n-butane is taken as 1 and n-octane as 2
y1=0.5;//mole fraction of n-butane in the equimolar mixture
y2=0.5;//mole fraction of n-octane in the equimolar mixture
a1=(0.42748*R^2*Tc(1,:)^2.5)/(Pc(1,:)*10^5*sqrt(T));//calculation of Redlich-Kwong constant for n-butane in (m^6 Pa mol^-2)
a2=(0.42748*R^2*Tc(2,:)^2.5)/(Pc(2,:)*10^5*sqrt(T));//calculation of Redlich-Kwong constant for n-octane in (m^6 Pa mol^-2)
b1=(0.08664*R*Tc(1,:))/(Pc(1,:)*10^5);//calculation of Redlich-Kwong constant for n-butane in m^3/mol
b2=(0.08664*R*Tc(2,:))/(Pc(2,:)*10^5);//calculation of Redlich-Kwong constant for n-octane in m^3/mol
//Set Kij=0 and evaluate a using Eq.(9.64)
a=((y1^2)*a1)+(2*y1*y2*sqrt(a1*a2))+((y2^2)*a2);//calculation of Redlich-Kwong constant for the mixture using Eq.(9.64) in (m^6 Pa mol^-2)
b=(y1*b1)+(y2*b2);//calculation of Redlich-Kwong constant for the mixture using Eq.(9.65) in m^3/mol

//The Cardans method can be used to determine Z
A=(a*P*10^5)/(R*T)^2;//calculation of A to determine alpha,beeta and gaamma by using Eq.(3.25)
B=(b*P*10^5)/(R*T);//calculation of B to determine alpha,beeta and gaamma by using Eq.(3.26)
alpha=-1;//calculation of alpha for Redlich-Kwong equation of state using Table (3.2)
beeta=A-B-B^2;//calculation of beeta for Redlich-Kwong equation of state using Table (3.2)
gaamma=-(A*B);//calculation of gaamma for Redlich-Kwong equation of state using Table (3.2)
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
        r=sqrt((-(p^3)/27));//calculation of r using Eq.(3.38)
        theta=acos((-(q)/2)*(1/r));//calculation of theta in radians using Eq.(3.37)
        Z1=(2*(r^(1/3))*cos(theta/3))-(alpha/3);
        Z2=(2*(r^(1/3))*cos(((2*%pi)+theta)/3))-(alpha/3);//Three unequal real roots given by Eqs.(3.34,3.35 and 3.36)
        Z3=(2*(r^(1/3))*cos(((4*%pi)+theta)/3))-(alpha/3);
        Za=[Z1 Z2 Z3];
        Z=max(Za);
    end
end
//calculation of the fugacity coefficient of n-butane in the mixture using Eq.(9.126) (no unit)
phi1=exp (((b1/b)*(Z-1))-log(Z-B)+((a/(b*R*T))*((b1/b)-(2*sqrt(a1/a)))*log((Z+B)/Z)));
//calculation of the fugacity coefficient of n-octane in the mixture using Eq.(9.126) (no unit)
phi2=exp (((b2/b)*(Z-1))-log(Z-B)+((a/(b*R*T))*((b2/b)-(2*sqrt(a2/a)))*log((Z+B)/Z)));

//OUTPUT
mprintf("\n The fugacity coefficient of n-butane in the equimolar mixture using the Redlich-Kwong Equation of state = %0.4f \n",phi1);
mprintf("\n The fugacity coefficient of n-octane in the equimolar mixture using the Redlich-Kwong Equation of state = %0.4f \n",phi2);

//===============================================END OF PROGRAM===================================================
