// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-12,Example 5,Page 435
//Title: VLE data using the van Laar model
//================================================================================================================
clear 
clc

//INPUT
//For convenience chloroform is taken as 1 and methanol is taken as 2
P=760;//pressure in Torr at which chloroform and methanol form an azeotrope
T=53.5;//temperature in degree celsius at which chloroform and methanol form an azeotrope
x1=0.65;//mole fraction of chloroform in the liquid phase (no unit) (corresponding to azeotropic composition)
antoine_const_chloroform=[6.95465;1170.966;226.232];//Antoine's constants for acetone from Table A.7
antoine_const_methanol=[8.08097;1582.271;239.726];//Antoine's constants for acetone from Table A.7

//CALCULATION
//The form of the Antoine's equation used is logP=A-(B/(t+C)), where P is in Torr and t is in degree celsius
x2=1-x1;//calculation of the mole fraction of methanol in the liquid phase (no unit) (corresponding to azeotropic composition)
//calculation of saturation pressure of chloroform at T in Torr
P1_s=10^(antoine_const_chloroform(1,:)-(antoine_const_chloroform(2,:)/(T+antoine_const_chloroform(3,:))));
//calculation of saturation pressure of methanol at T in Torr
P2_s=10^(antoine_const_methanol(1,:)-(antoine_const_methanol(2,:)/(T+antoine_const_methanol(3,:))));
//At the azeotropic conditions, the activity coefficients are determined using Eq.(12.15 and 12.16)
gaamma1=P/P1_s;//calculation of activity coefficient using Eq.(12.15) (no unit)
gaamma2=P/P2_s;//calculation of activity coefficient using Eq.(12.16) (no unit)
A=log(gaamma1)*(1+((x2*log(gaamma2))/(x1*log(gaamma1))))^2;//calculation of the van Laar parameter (no unit) using Eq.(11.84)
B=log(gaamma2)*(1+((x1*log(gaamma1))/(x2*log(gaamma2))))^2;//calculation of the van Laar parameter (no unit) using Eq.(11.85)
x1=0.1:0.1:0.9;//taking the values of mole fraction of chloroform in the liquid phase to compute the VLE data (no unit)
l=length(x1);//iteration parameter
j=1;//iteration parameter
while j<l|j==l
    ln_gaamma1(j)=A/(1+((A*x1(:,j))/(B*(1-x1(:,j)))))^2;//calculation of ln(activity coefficient) (no unit)
    ln_gaamma2(j)=B/(1+((B*(1-x1(:,j)))/(A*x1(:,j))))^2;//calculation of ln(activity coefficient) (no unit)
    gaamma1(j)=exp(ln_gaamma1(j));//calculation of the activity coefficient (no unit)
    gaamma2(j)=exp(ln_gaamma2(j));//calculation of the activity coefficient (no unit)
    P(j)=(gaamma1(j)*x1(:,j)*P1_s)+(gaamma2(j)*(1-x1(:,j))*P2_s);//calculation of pressure in Torr
    y1(j)=(gaamma1(j)*x1(:,j)*P1_s)/P(j);//calculation of mole fraction of chloroform in vapour phase (no unit)
    j=j+1;
end

//OUTPUT
mprintf('VLE data: \n\n');
i=1;
mprintf('x1 \tgamma1 \t\t gamma2  \t P (Torr) \t y1 \n\n');
for i=1:l
    mprintf('%0.1f \t %f \t %f \t %f \t %f \n',x1(i),gaamma1(i),gaamma2(i),P(i),y1(i));
end

//===============================================END OF PROGRAM===================================================
