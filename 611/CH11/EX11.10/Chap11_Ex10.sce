// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-11,Example 10,Page 401
//Title: Activity coefficients using the UNIQUAC equation
//================================================================================================================
clear 
clc

//INPUT
//For convenience, ethanol is taken as 1 and benzene as 2
T=345;//temperature of the mixture in K
x1=0.8;//mole fraction of ethanol in the liquid phase (no unit)

//Ethanol (CH3CH2OH) has 1 CH3 group, 1 CH2 group and 1 OH group, while Benzene has 6 ACH groups. The group identification and the parameters R_k and Q_k are given below:
//Molecule: Ethanol : Group identification: Name: CH3, Main No. 1, Sec.No.1, Name: CH2, Main No. 1,Sec.No.2, Name: OH, Main No.5 ,Sec.No.14
//Molecule: Benzene : Group identification: Name: ACH, Main No. 3, Sec.No. 9
nu_ki=[1;1;1;6];//number of groups of type: CH3, CH2, OH and ACH respectively (no unit)
R_k=[0.9011;0.6744;1.0000;0.5313];//Group volume parameter for CH3, CH2, OH and ACH respectively (no unit)
Q_k=[0.848;0.540;1.200;0.400];//Area parameter for CH3, CH2, OH and ACH respectively (no unit)
R=8.314;//universal gas constant in J/molK
u12_u22=-241.2287;//UNIQUAC parameter for the system in J/molK
u21_u11=2799.5827;//UNIQUAC parameter for the system in J/molK
z=10;//co-ordination number usually taken as 10 (no unit)

//CALCULATION
x2=1-x1;//calculation of mole fraction of benzene in liquid phase (no unit)
r1=(nu_ki(1,:)*R_k(1,:))+(nu_ki(2,:)*R_k(2,:))+(nu_ki(3,:)*R_k(3,:));//calculation of volume parameter using Eq.(11.108) (no unit)
r2=(nu_ki(4,:)*R_k(4,:));//calculation of volume parameter using Eq.(11.108) (no unit)
phi1=(x1*r1)/((x1*r1)+(x2*r2));//calculation of volume fraction of component using Eq.(11.101) (no unit)
phi2=(x2*r2)/((x2*r2)+(x1*r1));//calculation of volume fraction of component using Eq.(11.101) (no unit)
q1=(nu_ki(1,:)*Q_k(1,:))+(nu_ki(2,:)*Q_k(2,:))+(nu_ki(3,:)*Q_k(3,:))//calculation of surface area parameter using Eq.(11.109) (no unit)
q2=(nu_ki(4,:)*Q_k(4,:))//calculation of surface area parameter using Eq.(11.109) (no unit)
theta1=(x1*q1)/((x1*q1)+(x2*q2));//calculation of area fraction of component using Eq.(11.102) (no unit)
theta2=(x2*q2)/((x1*q1)+(x2*q2));//calculation of area fraction of component using Eq.(11.102) (no unit)
l1=((z/2)*(r1-q1))-(r1-1);//calculation of l_i using Eq.(11.107) (no unit)
l2=((z/2)*(r2-q2))-(r2-1);//calculation of l_i using Eq.(11.107) (no unit)
tau_12=exp(-(u12_u22)/(R*T));//calculation of the adjustable parameter using Eq.(11.103) (no unit)
tau_21=exp(-(u21_u11)/(R*T));//calculation of the adjustable parameter using Eq.(11.103) (no unit)
tau_11=1.0;//by convention taken as 1.0
tau_22=1.0;//by convention taken as 1.0
//calculation of the combinatorial part of the activity coefficient using Eq.(11.105) (no unit)
ln_gaamma1_c=log(phi1/x1)+((z/2)*q1*log(theta1/phi1))+l1-((phi1/x1)*((x1*l1)+(x2*l2)));
//calculation of the combinatorial part of the activity coefficient using Eq.(11.105) (no unit)
ln_gaamma2_c=log(phi2/x2)+((z/2)*q2*log(theta2/phi2))+l2-((phi2/x2)*((x1*l1)+(x2*l2)));
//calculation of the residual part of the activity coefficient using Eq.(11.106) (no unit)
ln_gaamma1_r=q1*(1-log((theta1*tau_11)+(theta2*tau_21))-(((theta1*tau_11)/((theta1*tau_11)+(theta2*tau_21)))+((theta2*tau_12)/((theta1*tau_12)+(theta2*tau_22)))));
//calculation of the residual part of the activity coefficient using Eq.(11.106) (no unit)
ln_gaamma2_r=q2*(1-log((theta1*tau_12)+(theta2*tau_22))-(((theta1*tau_21)/((theta1*tau_11)+(theta2*tau_21)))+((theta2*tau_22)/((theta1*tau_12)+(theta2*tau_22)))));
ln_gaamma1=ln_gaamma1_c+ln_gaamma1_r;//calculation of the ln(activity coefficient) using Eq.(11.104) (no unit)
ln_gaamma2=ln_gaamma2_c+ln_gaamma2_r;//calculation of the ln(activity coefficient) using Eq.(11.104) (no unit)
gaamma1=exp(ln_gaamma1);//calculation of the activity coefficient (no unit)
gaamma2=exp(ln_gaamma2);//calculation of the activity coefficient (no unit)

//OUTPUT

mprintf('The activity coefficients for the system using the UNIQUAC equation are : gamma1=%f \t gamma2=%f \t\n ', gaamma1,gaamma2);

//===============================================END OF PROGRAM===================================================


