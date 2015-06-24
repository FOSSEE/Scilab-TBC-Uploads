// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-10,Example 3,Page 370
//Title:Vapour Pressure of n-octane using the Peng-Robinson equation of state
//================================================================================================================
clear 
clc

//INPUT
T=427.85;//temperature of n-octane vapour in K
R=8.314;//universal gas constant in J/molK
Tc=569.4;//critical temperature of n-octane in K
Pc=24.97;//critical pressure of n-octane in bar
w=0.398;//acentric factor (no unit) 

//CALCULATION
Pguess=0.215;//taking a guess value of vapour pressure (P) to check the criterion of equilibrium given by Eq.(10.37) in MPa
//Using the Cardans method to calculate Z_l and Z_v
Tr=T/Tc;//calculation of reduced temperature (no unit)
Pr=(Pguess*10^6)/(Pc*10^5);//calculation of reduced pressure (no unit)
S=0.37464+(1.54226*w)-(0.26992*w^2);//calculation of S using Eq.(3.79)
alpha1=(1+(S*(1-sqrt(Tr))))^2;//calculation of alpha1 using Eq.(3.78)
a=(0.45724*R^2*Tc^2*alpha1)/(Pc*10^5);//calculation of the Peng-Robinson constant in (m^6 Pa mol^-2) using Eq.(3.76)
b=(0.07780*R*Tc)/(Pc*10^5);//calculation of the Peng-Robinson constant in m^3/mol using Eq.(3.77)
A=(a*Pguess*10^6)/(R*T)^2;//calculation of A to determine alpha,beeta and gaamma by using Eq.(3.25)
B=(b*Pguess*10^6)/(R*T);//calculation of B to determine alpha,beeta and gaamma by using Eq.(3.26)
alpha=-1+B;//calculation of alpha for Peng-Robinson equation of state using Table (3.2)
beeta=A-(2*B)-(3*B^2);//calculation of beeta for Peng-Robinson equation of state using Table (3.2)
gaamma=-(A*B)+(B^2)+(B^3);//calculation of gaamma for Peng-Robinson equation of state using Table (3.2)
p=beeta-(alpha^2)/3;//calculation of p to determine the roots of the cubic equation using Eq.(3.29)
q=((2*alpha^3)/27)-((alpha*beeta)/3)+gaamma;//calculation of q to determine the roots of the cubic equation using Eq.(3.30)
D=(((q)^2)/4)+(((p)^3)/27);//calculation of D to determine the nature of roots using Eq.(3.31)

if D>0 then
        Z=((-q/2)+(sqrt(D)))^(1/3)+((-q/2)-(sqrt(D)))^(1/3)-(alpha/3);//One real root given by  Eq.(3.32)
        Z_l=Z;
        Z_v=Z;
else if D==0 then
        Z1=((-2*(q/2))^(1/3))-(alpha/3);//Three real roots and two equal given by Eq.(3.33)
        Z2=((q/2)^(1/3))-(alpha/3);
        Z3=((q/2)^(1/3))-(alpha/3);
        Z=[Z1 Z2 Z3];
        Z_l=min(Z);
        Z_v=max(Z);
    else
        r=sqrt((-(p^3)/27));//calculation of r using Eq.(3.38)
        theta=acos((-(q)/2)*(1/r));//calculation of theta in radians using Eq.(3.37)
        Z1=(2*(r^(1/3))*cos(theta/3))-(alpha/3);
        Z2=(2*(r^(1/3))*cos(((2*%pi)+theta)/3))-(alpha/3);//Three unequal real roots given by Eqs.(3.34,3.35 and 3.36)
        Z3=(2*(r^(1/3))*cos(((4*%pi)+theta)/3))-(alpha/3);
        Z=[Z1 Z2 Z3];
        Z_l=min(Z);
        Z_v=max(Z);

    end
end
//calculation of fugacity coefficient for the liquid using Eq.(9.48) (no unit)
phi_l=exp (Z_l-1-log(Z_l-B)-((a/(2*sqrt(2)*b*R*T))*log((Z_l+(B*(1+sqrt(2))))/(Z_l+(B*(1-sqrt(2)))))));
//calculation of fugacity coefficient for the vapour using Eq.(9.48) (no unit)
phi_v=exp (Z_v-1-log(Z_v-B)-((a/(2*sqrt(2)*b*R*T))*log((Z_v+(B*(1+sqrt(2))))/(Z_v+(B*(1-sqrt(2)))))));
fl=Pguess*phi_l;//calculation of the fugacity of the liquid in MPa
fv=Pguess*phi_v;//calculation of the fugacity of the vapour in MPa
tolerance=1e-6;//defining the tolerance to compare fl and fv
if abs(fl-fv)<tolerance then
    P=Pguess;//the vapour pressure (in MPa) is taken as the guess value as the criterion of equilibrium given by Eq.(10.37) is established
else
    Prevised=Pguess*(fl/fv);//calculation of the revised value of P to check for the criterion of equilibrium given by Eq.(10.37) in MPa, if it fails for Pguess
while abs(fl-fv)>tolerance
    //Using the Cardans method to calculate Z_l and Z_v
Tr=T/Tc;//calculation of reduced temperature (no unit)
Pr=(Prevised*10^6)/(Pc*10^5);//calculation of reduced pressure (no unit)
S=0.37464+(1.54226*w)-(0.26992*w^2);//calculation of S using Eq.(3.79)
alpha1=(1+(S*(1-sqrt(Tr))))^2;//calculation of alpha1 using Eq.(3.78)
a=(0.45724*R^2*Tc^2*alpha1)/(Pc*10^5);//calculation of the Peng-Robinson constant in m^6*Pa*mol^-2 using Eq.(3.76)
b=(0.07780*R*Tc)/(Pc*10^5);//calculation of the Peng-Robinson constant in m^3/mol using Eq.(3.77)
A=(a*Prevised*10^6)/(R*T)^2;//calculation of A to determine alpha,beeta and gaamma by using Eq.(3.25)
B=(b*Prevised*10^6)/(R*T);//calculation of B to determine alpha,beeta and gaamma by using Eq.(3.26)
alpha=-1+B;//calculation of alpha for Peng-Robinson equation of state using Table (3.2)
beeta=A-(2*B)-(3*B^2);//calculation of beeta for Peng-Robinson equation of state using Table (3.2)
gaamma=-(A*B)+(B^2)+(B^3);//calculation of gaamma for Peng-Robinson equation of state using Table (3.2)
p=beeta-(alpha^2)/3;//calculation of p to determine the roots of the cubic equation using Eq.(3.29)
q=((2*alpha^3)/27)-((alpha*beeta)/3)+gaamma;//calculation of q to determine the roots of the cubic equation using Eq.(3.30)
D=(((q)^2)/4)+(((p)^3)/27);//calculation of D to determine the nature of roots using Eq.(3.31)

if D>0 then
        Z=((-q/2)+(sqrt(D)))^(1/3)+((-q/2)-(sqrt(D)))^(1/3)-(alpha/3);//One real root given by  Eq.(3.32)
        Z_l=Z;
        Z_v=Z;
else if D==0 then
        Z1=((-2*(q/2))^(1/3))-(alpha/3);//Three real roots and two equal given by Eq.(3.33)
        Z2=((q/2)^(1/3))-(alpha/3);
        Z3=((q/2)^(1/3))-(alpha/3);
        Z=[Z1 Z2 Z3];
        Z_l=min(Z);
        Z_v=max(Z);
    else
        r=sqrt((-(p^3)/27));//calculation of r using Eq.(3.38)
        theta=acos((-(q)/2)*(1/r));//calculation of theta in radians using Eq.(3.37)
        Z1=(2*(r^(1/3))*cos(theta/3))-(alpha/3);
        Z2=(2*(r^(1/3))*cos(((2*%pi)+theta)/3))-(alpha/3);//Three unequal real roots given by Eqs.(3.34,3.35 and 3.36)
        Z3=(2*(r^(1/3))*cos(((4*%pi)+theta)/3))-(alpha/3);
        Z=[Z1 Z2 Z3];
        Z_l=min(Z);
        Z_v=max(Z);

    end
end
//calculation of fugacity coefficient for the liquid using Eq.(9.48) (no unit)
phi_l=exp (Z_l-1-log(Z_l-B)-((a/(2*sqrt(2)*b*R*T))*log((Z_l+(B*(1+sqrt(2))))/(Z_l+(B*(1-sqrt(2)))))));
//calculation of fugacity coefficient for the vapour using Eq.(9.48) (no unit)
phi_v=exp (Z_v-1-log(Z_v-B)-((a/(2*sqrt(2)*b*R*T))*log((Z_v+(B*(1+sqrt(2))))/(Z_v+(B*(1-sqrt(2)))))));
fl=Prevised*phi_l;//calculation of the fugacity of the liquid in MPa
fv=Prevised*phi_v;//calculation of the fugacity of the vapour in MPa
Prevised=Prevised*fl/fv;//updating the value of Prevised for the next iteration
end
P=Prevised;//the vapour pressure (in MPa) is taken as the revised value as the criterion of equilibrium given by Eq.(10.37) is established
end

//OUTPUT
mprintf("\n The vapour pressure of n-octane at 427.85K = %f MPa\n",P);


//===============================================END OF PROGRAM===================================================
