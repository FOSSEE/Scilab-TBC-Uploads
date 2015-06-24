// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-12,Example 1,Page 423
//Title: Margules parameters
//================================================================================================================
clear 
clc

//INPUT
//For convenience Benzene is taken as 1 and heptane is taken as 2
T=60;//temperature of the system in degree celsius
P=[237.60;265.20;317.50;333.00;368.70;387.20];//Pressure data in Torr (from Danneil et al.)
x1=[0.0870;0.1800;0.4040;0.4790;0.7130;0.9070];//mole fraction of benzene in the liquid phase corresponding to the given pressure (no unit) (from Danneil et al.)
y1=[0.1870;0.3400;0.5780;0.6420;0.7960;0.9220];//mole fraction of benzene in the vapour phase corresponding to the given pressure (no unit) (from Danneil et al.)
antoine_const_benzene=[6.87987;1196.760;219.161];//Antoine's constants for Benzene from Table A.7
antoine_const_heptane=[6.89386;1264.370;216.640];//Antoine's constants for heptane from Table A.7

//CALCULATION
//The form of the Antoine's equation used is logP=A-(B/(t+C)), where P is in Torr and t is in degree celsius
P1_s=10^(antoine_const_benzene(1,:)-(antoine_const_benzene(2,:)/(T+antoine_const_benzene(3,:))));//calculation of saturation pressure of benzene at T in Torr
P2_s=10^(antoine_const_heptane(1,:)-(antoine_const_heptane(2,:)/(T+antoine_const_heptane(3,:))));//calculation of saturation pressure of heptane at T in Torr
l=length(P);//iteration parameter
i=1;//iteration parameter
while i<l|i==l
    gaamma1(i)=(y1(i,:)*P(i,:))/(x1(i,:)*P1_s);//calculation of activity coefficient using the data points (no unit)
    gaamma2(i)=((1-y1(i,:))*P(i,:))/((1-x1(i,:))*P2_s);//calculation of activity coefficient using the data points (no unit)
    ln_gaamma1_expt(i)=log(gaamma1(i));
    ln_gaamma2_expt(i)=log(gaamma2(i));
    gE_RTx1x2(i)=((x1(i,:)*ln_gaamma1_expt(i))+((1-x1(i,:))*ln_gaamma2_expt(i)))/(x1(i,:)*(1-x1(i,:)));//calculation of gE/RT using Eq.(11.36) (no unit)
    i=i+1;
end
plot(x1,gE_RTx1x2,'o');//Plot of gE/RTx1x2 vs x1 to determine A12 and A21
 xtitle('Plot of gE/RTx1x2 vs x1','x1','gE/RTx1x2');
//The three suffix Margules equation is given by gE/RTx1x2=(A21*x1)+(A12*x2), upon plotting gE/RTx1x2 vs x1 , the values of A12 and A21 were found (corresponding to x1=0 and x1=1.0. At x1=0, we get the value of A12 and at x1=1.0 i.e. x2=0, we get A21)
A21=0.555;//value of A21 obtained from the plot of gE/RTx1x2 vs x1 (no unit)
A12=0.315;//value of A12 obtained from the plot of gE/RTx1x2 vs x1 (no unit)
//From the Margules equations (Eq. 11.79 and 11.80), the activity coefficients, Pressure and the mole fraction of benzene in the vapour phase in the vapour phase are recalculated using the experimental values of the mole fraction of benzene in the liquid phase (x1)repoerted earlier and the Margules paramters found above.
j=1;//iteration parameter
while j<l|j==l
    ln_gaamma1(j)=((1-x1(j,:))^2)*(A12+(2*(A21-A12)*x1(j,:)));//calculation of ln(activity coefficient) (no unit)
    ln_gaamma2(j)=(x1(j,:)^2)*(A21+(2*(A12-A21)*(1-x1(j,:))));//calculation of ln(activity coefficient) (no unit)
    gaamma1(j)=exp(ln_gaamma1(j));//calculation of the activity coefficient (no unit)
    gaamma2(j)=exp(ln_gaamma2(j));//calculation of the activity coefficient (no unit)
    P_calc(j)=(gaamma1(j)*x1(j,:)*P1_s)+(gaamma2(j)*(1-x1(j,:))*P2_s);//pressure recalculated in Torr
    y1_calc(j)=(gaamma1(j)*x1(j,:)*P1_s)/P(j);//recalculation of mole fraction of benzene in vapour phase (no unit)
    j=j+1;
end

//OUTPUT
mprintf('Data for the plot of gE/RTx1x2 vs x1: \n\n');
i=1;
for i=1:l
    mprintf('P=%f Torr\t x1=%f\t y1=%f \t ln(gamma1)=%f\t\t ln(gamma2)=%f\t\t gE/RTx1x2=%f\n\n',P(i),x1(i),y1(i),ln_gaamma1_expt(i),ln_gaamma2_expt(i),gE_RTx1x2(i));
end
mprintf('Results: \n\n');
i=1;
for i=1:l
    mprintf('x1=%f \t gamma1=%f \t gamma2=%f \t P_Exptl.=%f Torr\t P_Calc=%f Torr\t y1_Exptl=%f \t y1_calc=%f \n\n',x1(i),gaamma1(i),gaamma2(i),P(i),P_calc(i),y1(i),y1_calc(i));
end

//===============================================END OF PROGRAM===================================================
//DISCLAIMER:ONE OF THE VALUES OF y1(Exptl) GIVEN IN THE ANSWER HAS A TYPO ERROR. THE VALUE AS GIVEN IN THE QUESTION IS 0.7960,WHILE WHAT IS GIVEN IN THE ANSWER IS 0.7920  THIS HAS BEEN CORRECTED IN THIS CODE.


