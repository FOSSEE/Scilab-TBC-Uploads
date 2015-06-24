// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-12,Example 4,Page 432
//Title: P-x-y data using the van Laar model
//================================================================================================================
clear 
clc

//INPUT
//For convenience acetone is taken as 1 and cyclohexane is taken as 2
T=25;//temperature of the system in degree celsius
A=2.0684;//the van Laar parameters for the system (no unit)
B=1.7174;//the van Laar parameters for the system (no unit)
P=[118.05;207.70;246.35;259.40;261.50;262.00;261.90;258.70;252.00];//Pressure data in Torr (from Tasic et al.)
//mole fraction of acetone in the liquid phase corresponding to the given pressure (no unit) (from Tasic et al.)
x1=[0.0115;0.1125;0.3090;0.5760;0.6920;0.7390;0.7575;0.8605;0.9250];
//mole fraction of acetone in the vapour phase corresponding to the given pressure (no unit) (from Tasic et al.)
y1=[0.1810;0.5670;0.6550;0.7050;0.7250;0.7390;0.7460;0.8030;0.8580];
antoine_const_acetone=[7.11714;1210.595;229.664];//Antoine's constants for acetone from Table A.7
antoine_const_chexane=[6.85146;1206.470;223.136];//Antoine's constants for cyclohexane from Table A.7

//CALCULATION
//The form of the Antoine's equation used is logP=A-(B/(t+C)), where P is in Torr and t is in degree celsius
P1_s=10^(antoine_const_acetone(1,:)-(antoine_const_acetone(2,:)/(T+antoine_const_acetone(3,:))));//calculation of saturation pressure of acetone at T in Torr
//calculation of saturation pressure of cyclohexane at T in Torr
P2_s=10^(antoine_const_chexane(1,:)-(antoine_const_chexane(2,:)/(T+antoine_const_chexane(3,:))));
//From the van Laar equations(Eq. 11.82 and 11.83), the activity coefficients are found out
l=length(P);//iteration parameter
j=1;//iteration parameter
while j<l|j==l
    ln_gaamma1(j)=A/(1+((A*x1(j,:))/(B*(1-x1(j,:)))))^2;//calculation of ln(activity coefficient) (no unit)
    ln_gaamma2(j)=B/(1+((B*(1-x1(j,:)))/(A*x1(j,:))))^2;//calculation of ln(activity coefficient) (no unit)
    gaamma1(j)=exp(ln_gaamma1(j));//calculation of the activity coefficient (no unit)
    gaamma2(j)=exp(ln_gaamma2(j));//calculation of the activity coefficient (no unit)
    P(j)=(gaamma1(j)*x1(j,:)*P1_s)+(gaamma2(j)*(1-x1(j,:))*P2_s);//calculation of pressure in Torr
    y1_calc(j)=(gaamma1(j)*x1(j,:)*P1_s)/P(j);//calculation of mole fraction of acetone in vapour phase (no unit)
    j=j+1;
end

//OUTPUT
mprintf('P-x-y data: \n\n');
i=1;
mprintf('x1 \t  gamma1 \t gamma2 \t P(Torr) \t y1 \n');
for i=1:l
    mprintf('%0.4f \t %f \t %f \t %f  \t %f \n',x1(i),gaamma1(i),gaamma2(i),P(i),y1_calc(i));
end

//===============================================END OF PROGRAM===================================================
