// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-12,Example 8,Page 449
//Title: Thermodynamic consistency
//================================================================================================================
clear 
clc

//INPUT
//For convenience 1-Propanol is taken as 1 and chlorobenzene is taken as 2
P=[350.00;446.00;518.00;574.50;609.00;632.50;665.00;681.50;691.50];//pressure data in Torr, taken from (Ellis et al.)
x1=[0.0550;0.1290;0.2120;0.3130;0.4300;0.5200;0.6380;0.7490;0.8720];//mole fraction of 1-propanol in the liquid phase, taken from (Ellis et al.) (no unit)
y1=[0.3500;0.5110;0.5990;0.6500;0.6970;0.7260;0.7590;0.8130;0.8830];//mole fraction of 1-propanol in the vapour phase, taken from (Ellis et al.) (no unit)
antoine_const_propanol=[8.37895;1788.020;227.438];//Antoine's constants for 1-Propanol from Table A.7
antoine_const_cbenzene=[7.17294;1549.200;229.260];//Antoine's constants for Chlorobenzene from Table A.7
T=95;//temperature of the system in degree celsius

//CALCULATION
//The form of the Antoine's equation used is logP=A-(B/(t+C)), where P is is Torr and t is in degree celsius
P1_s=10^(antoine_const_propanol(1,:)-(antoine_const_propanol(2,:)/(T+antoine_const_propanol(3,:))));//calculation of saturation pressure of propanol at T in Torr
//calculation of saturation pressure of chlorobenzene at T in Torr
P2_s=10^(antoine_const_cbenzene(1,:)-(antoine_const_cbenzene(2,:)/(T+antoine_const_cbenzene(3,:))));
l=length(P);//iteration parameter
i=1;//iteration paramter
while i<l|i==l
    gaamma1(i)=(y1(i,:)*P(i,:))/(x1(i,:)*P1_s);//calculation of activity coefficient using Eq.(12.15) (no unit)
    gaamma2(i)=((1-y1(i,:))*P(i,:))/((1-x1(i,:))*P2_s);//calculation of activity coefficient using Eq.(12.16) (no unit)
    lngamma1_gamma2(i)=log(gaamma1(i)/gaamma2(i));//calculation of ln(activity coefficient1/activity coefficient 2) (no unit), to check for the consistency
    i=i+1;
end
plot(x1,lngamma1_gamma2);//Plot of ln(gamma1/gamma2) vs x1 to determine A12 and A21
xtitle('Plot of ln(gamma1/gamma2) vs x1','x1','ln(gamma1/gamma2)');
//From the figure, the area above the x-axis and the area below the x-axis are determined and the thermodynamic consistency is checked
area_above=1515;//area above the x-axis from the above plot (no unit)
area_below=1540;//area below the x-axis (absolute value) from the above plot (no unit)
consistency_parameter=abs((area_above-area_below)/(area_above+area_below));//calculating the paramter for checking the thermodynamic consistency (no unit)


//OUTPUT
mprintf('Values of ln(gamma1/gamma2): \n\n');
i=1;
mprintf('x1 \t gamma1 \t gamma2 \t ln(gamma1/gamma2)\n');

for i=1:l
    mprintf('%0.4f \t %f \t %f \t %f \n',x1(i),gaamma1(i),gaamma2(i),lngamma1_gamma2(i));
end
mprintf('\nThe value of the consistency parameter=%f\n',consistency_parameter);
//0.02 is taken as the checking paramter for the consistency as prescribed by the author in the book on Page 449
if consistency_parameter<0.02|consistency_parameter==0.02 then
    mprintf('The VLE data is thermodynamically consistent');
else
    mprintf('The VLE data is not thermodynamically consistent');
end

//===============================================END OF PROGRAM===================================================
 
