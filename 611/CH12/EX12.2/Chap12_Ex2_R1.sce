// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-12,Example 2,Page 427
//Title: van Laar parameters and t-x-y data
//================================================================================================================
clear 
clc

//INPUT
//For convenience methanol is taken as 1 and nitromethane is taken as 2
P=760;//pressure of the system in Torr
t=[96.90;68.20;65.10;64.50];//temperature of the system in degree celsius (from Nakanishi et al.)
x1=[0.0150;0.4260;0.7470;0.9140];//mole fraction of methanol in the liquid phase corresponding to the given temperature (no unit) (from Nakanishi et al.)
y1=[0.1330;0.7470;0.8380;0.9210];//mole fraction of methanol in the vapour phase corresponding to the given temperature (no unit) (from Nakanishi et al.)
antoine_const_methanol=[8.08097;1582.271;239.726];//Antoine's constants for methanol from Table A.7
antoine_const_nmethane=[7.28166;1446.937;227.600];//Antoine's constants for nitromethane from Table A.7

//CALCULATION
//The form of the Antoine's equation used is logP=A-(B/(t+C)), where P is in Torr and t is in degree celsius
l=length(t);//iteration parameter
i=1;
while i<l|i==l
//calculation of saturation pressure of methanol at t in Torr
P1_s(i)=10^(antoine_const_methanol(1,:)-(antoine_const_methanol(2,:)/(t(i,:)+antoine_const_methanol(3,:))));
//calculation of saturation pressure of nitromethane at t in Torr
P2_s(i)=10^(antoine_const_nmethane(1,:)-(antoine_const_nmethane(2,:)/(t(i,:)+antoine_const_nmethane(3,:))));
gaamma1(i)=(y1(i,:)*P)/(x1(i,:)*P1_s(i));//calculation of activity coefficient using the data points (no unit)
gaamma2(i)=((1-y1(i,:))*P)/((1-x1(i,:))*P2_s(i));//calculation of activity coefficient using the data points (no unit)
ln_gaamma1(i)=log(gaamma1(i));//calculating the value of ln(activity coefficient) (no unit)
ln_gaamma2(i)=log(gaamma2(i));//calculating the value of ln(activity coefficient) (no unit)
gE_RT(i)=((x1(i,:)*ln_gaamma1(i))+((1-x1(i,:))*ln_gaamma2(i)));//calculation of gE/RT using Eq.(11.36) (no unit)
x1x2_gE_RT(i)=(x1(i,:)*(1-x1(i,:)))/gE_RT(i);//function for plotting againt x1 to determine the van Laar paramters (no unit)
i=i+1;
end
plot(x1,x1x2_gE_RT,'o');//Plot of RTx1x2/gE vs x1 to determine A and B
 xtitle('Plot of RTx1x2/gE vs x1','x1','RTx1x2/gE');
 //The values of the intercepts are read from Plot 12.2. From the intercepts ,the value of A and B are determined as given below
intercept_A=0.6725;//value of 1/A at x1=0, read from the plot (no unit)
intercept_B=0.710;//value of 1/B at x1=1.0, read from the plot (no unit)
A=1/intercept_A;//calculation of A (no unit)
B=1/intercept_B;//calculation of B (no unit)
//From the van Laar equations and using the van Laar parameters determined above along with the reported values of the mole fraction of methanol in the liquid   phase (x1), the activity coefficients and the mole fraction of methanol in the vapour phase (y1) are found out.
j=1;//iteration parameter
tol=1e-6;//tolerance limit for convergence of the system  when using fsolve
while j<l|j==l
    ln_gaamma1_new(j)=A/(1+((A/B)*(x1(j,:)/(1-x1(j,:)))))^2;//calculation of ln(activity coefficient) (no unit)
    ln_gaamma2_new(j)=B/(1+((B/A)*((1-x1(j,:))/x1(j,:))))^2;//calculation of ln(activity coefficient) (no unit)
    gaamma1(j)=exp(ln_gaamma1_new(j));//calculation of the activity coefficient (no unit)
    gaamma2(j)=exp(ln_gaamma2_new(j));//calculation of the activity coefficient (no unit)
    tguess(j)=100;//taking a guess value for the temperature to be used in the fsolve function in degree celsius
function[fn]=solver_func(ti)
 fn=((gaamma1(j)*(x1(j,:)/P)*(10^(antoine_const_methanol(1,:)-(antoine_const_methanol(2,:)/(ti+antoine_const_methanol(3,:))))))+((gaamma2(j))*((1-x1(j,:))/P)*(10^(antoine_const_nmethane(1,:)-(antoine_const_nmethane(2,:)/(ti+antoine_const_nmethane(3,:)))))))-1.0;//Function defined for solving the system 
endfunction
[t_calc(j)]=fsolve(tguess(j),solver_func,tol)//using inbuilt function fsolve for solving the system of equations
j=j+1;
end
//Recalculation of the mole fraction of methanol in the vapour phase using the temperature recalculated above and the activity coefficients calculated above
j=1;//iteration paramter
while j<l|j==l
//recalculation of saturation pressure of methanol at t in Torr
P1_s_calc(j)=10^(antoine_const_methanol(1,:)-(antoine_const_methanol(2,:)/(t_calc(j,:)+antoine_const_methanol(3,:))));
//recalculation of saturation pressure of nitromethane at t in Torr
P2_s_calc(j)=10^(antoine_const_nmethane(1,:)-(antoine_const_nmethane(2,:)/(t_calc(j,:)+antoine_const_nmethane(3,:))));
y1_calc(j)=(gaamma1(j)*x1(j,:)*P1_s_calc(j))/P;//recalculation of the mole fraction of methanol in vapour phase (no unit)
j=j+1;
end

//OUTPUT
mprintf('Data for the plot of RTx1x2/gE vs x1: \n\n');
i=1;
for i=1:l
    mprintf('t=%f degree celsius\t P1_s=%f Torr \t P2_s=%f Torr \t x1=%f\t y1=%f \n ln(gamma1)=%f\t\t ln(gamma2)=%f\t\t RTx1x2/gE=%f\n\n',t(i),P1_s(i),P2_s(i),x1(i),y1(i),ln_gaamma1(i),ln_gaamma2(i),x1x2_gE_RT(i));
end
mprintf('Txy data recalculated: \n \n');
i=1;
for i=1:l
    mprintf('x1=%f \n t_exptl=%f degree celsius \t t_calc=%f degree celsius \n y1_exptl=%f \t\t\t y1_calc=%f \n\n ',x1(i),t(i),t_calc(i),y1(i),y1_calc(i));
end

//===============================================END OF PROGRAM===================================================


