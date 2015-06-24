// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-9,Example 12,Page 335
//Title: Molar volume of mixture using van der Waals equation of state
//================================================================================================================
clear 
clc

//INPUT
T=600;//temperature of the equimolar n-butane and n-octane mixture in K
P=16;//pressure of the equimolar n-butane and n-octane mixture in bar
a_m=2.4405;//van der Waals constant for the mixture as determined in Example 9.8 in Pa(m^3/mol)^2
b_m=0.1767*10^-3;//van der Waals constant for the mixture as determined in Example 9.8 in m^3/mol
R=8.314;//universal gas constant in J/molK

//CALCULATION
//The problem is solved by using the Cardan's method
A=(a_m*P*10^5)/(R*T)^2;//calculation of A to determine alpha,beeta and gaamma by using Eq.(3.25)
B=(b_m*P*10^5)/(R*T);//calculation of B to determine alpha,beeta and gaamma by using Eq.(3.26)
alpha=-1-B;//calculation of alpha for van der Waals equation of state using Table (3.2)
beeta=A;//calculation of beeta for van der Waals equation of state using Table (3.2)
gaamma=-(A*B);//calculation of gaamma for van der Waals equation of state using Table (3.2)
p=beeta-((alpha^2)/3);//calculation of p to determine the roots of the cubic equaton using Eq.(3.29)
q=((2*alpha^3)/27)-((alpha*beeta)/3)+gaamma;//calculation of q to determine the roots of the cubic equaton using Eq.(3.30)
D=(((q)^2)/4)+(((p)^3)/27);//calculation of D to determine the nature of roots using Eq.(3.31)

if D>0 then
        Z=(((-(q)/2)+(sqrt(D)))^(1/3))+(((-(q)/2)-(sqrt(D)))^(1/3))-(alpha/3);//One real root given by  Eq.(3.32)
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
vm=(Z*R*T)/(P*10^5);//calculation of the molar volume of the equimolar mixture in m^3/mol

//OUTPUT
mprintf("\n The molar volume of an equimolar mixture of n-butane and n-octane at 600K and 16bar found using the van der Waals equation of state = %e m^3/mol\n",vm);

//===============================================END OF PROGRAM===================================================
// DISCLAIMER: VALUE OF Z COMPUTED IN PROGRAM IS NOT AS THAT REPORTED IN THE TEXTBOOK. HOWEVER, VALUES OF ALL OTHER PERTINENT VARIABLES A, B, alpha, beeta, p, q etc. AGREE WELL WITH THE TEXTBOOK ANSWER. COMPUTATION WAS ALSO VERIFIED MANUALLY AND GAVE THE ANSWER AS COMPUTED IN PROGRAM. ONE POSSIBLE REASON FOR DEVIATION COULD BE ROUND OFF ERROR.
