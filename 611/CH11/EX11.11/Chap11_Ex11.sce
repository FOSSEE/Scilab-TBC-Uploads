// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-11,Example 11,Page 405
//Title: Activity coefficients using the UNIFAC method
//================================================================================================================
clear 
clc

//INPUT
//For convenience, acetone is taken as 1 and n-pentane as 2
T=307;//temperature of the mixture in K
x1=0.3;//mole fraction of acetone in the liquid phase (no unit)

//Acetone (CH3COCH3) has 1 CH3 group and 1 CH3CO group, while n-Pentane (C5H12) has 2 CH3 groups and 3 CH2 groups. 
//The group identification and the parameters R_k and Q_k are given below:
//Componenet: Acetone : Group identification: Name: CH3, Main No. 1, Sec.No. 1, Name: CH3CO, Main No. 9, Sec.No. 18
//Component: n-Pentane : Group identification: Name: CH3, Main No. 1, Sec.No. 1, Name: CH2, Main No. 1, Sec.No. 2
nu_ki=[1;1;2;3];//no.of groups of type : CH3, CH3CO, CH3, CH2 respectively in the two components making up the systen (no unit)
R_k=[0.9011;1.6724;0.6744];//Group volume parameter for CH3, CH3CO and CH2 respectively (no unit)
Q_k=[0.848;1.488;0.540];//Area parameter for CH3, CH3CO and CH2 respectively (no unit)
a_19=476.40;//group interaction parameter for the system in K
a_91=26.760;//group interaction parameter for the system in K
z=10;//co-ordination number usually taken as 10 (no unit)

//CALCULATION
x2=1-x1;//calculation of mole fraction of benzene in liquid phase (no unit)
r1=(nu_ki(1,:)*R_k(1,:))+(nu_ki(2,:)*R_k(2,:));//calculation of volume parameter using Eq.(11.108) (no unit)
r2=(nu_ki(3,:)*R_k(1,:))+(nu_ki(4,:)*R_k(3,:));//calculation of volume parameter using Eq.(11.108) (no unit)
phi1=(x1*r1)/((x1*r1)+(x2*r2));//calculation of volume fraction of component using Eq.(11.101) (no unit)
phi2=(x2*r2)/((x2*r2)+(x1*r1));//calculation of volume fraction of component using Eq.(11.101) (no unit)
q1=(nu_ki(1,:)*Q_k(1,:))+(nu_ki(2,:)*Q_k(2,:))//calculation of surface area parameter using Eq.(11.109) (no unit)
q2=(nu_ki(3,:)*Q_k(1,:))+(nu_ki(4,:)*Q_k(3,:))//calculation of surface area parameter using Eq.(11.109) (no unit)
theta1=(x1*q1)/((x1*q1)+(x2*q2));//calculation of area fraction of component using Eq.(11.102) (no unit)
theta2=(x2*q2)/((x1*q1)+(x2*q2));//calculation of area fraction of component using Eq.(11.102) (no unit)
l1=((z/2)*(r1-q1))-(r1-1);//calculation of l_i using Eq.(11.107) (no unit)
l2=((z/2)*(r2-q2))-(r2-1);//calculation of l_i using Eq.(11.107) (no unit)
//calculation of the combinatorial part of the activity coefficient using Eq.(11.105) (no unit)
ln_gaamma1_c=log(phi1/x1)+((z/2)*q1*log(theta1/phi1))+l1-((phi1/x1)*((x1*l1)+(x2*l2)));
//calculation of the combinatorial part of the activity coefficient using Eq.(11.105) (no unit)
ln_gaamma2_c=log(phi2/x2)+((z/2)*q2*log(theta2/phi2))+l2-((phi2/x2)*((x1*l1)+(x2*l2)));
a_11=0;//by convention taken as 0.0,in K
a_99=0;//by convention taken as 0.0,in K
psi_19=exp(-(a_19)/(T));//calculation of psi_mn using Eq.(11.119) (no unit)
psi_91=exp(-(a_91)/(T));//calculation of psi_mn using Eq.(11.119) (no unit)
psi_11=1;//as a_11=0, psi_11=1 (no unit)
psi_99=1;//as a_99=0, psi_99=1 (no unit)
//calculation of the residual activity coefficient(tau_k) of group k, in a reference solution containing molecules of type i
x1_1=nu_ki(1,:)/(nu_ki(1,:)+nu_ki(2,:));//calculation of mole fraction of CH3 group (pure acetone(1)) (no unit)
x1_18=nu_ki(2,:)/(nu_ki(1,:)+nu_ki(2,:));//calculation of mole fraction of CH3CO group (pure acetone(1)) (no unit)
theta1_1=(Q_k(1,:)*x1_1)/((Q_k(1,:)*x1_1)+(Q_k(2,:)*x1_18));//calculation of surface area fraction of CH3 group (pure acetone) using Eq.(11.118) (no unit)
theta1_18=(Q_k(2,:)*x1_18)/((Q_k(2,:)*x1_18)+(Q_k(1,:)*x1_1));//calculation of surface area fraction of CH3CO group (pure acetone) using Eq.(11.118) (no unit)
//calculation of the residual activity coefficient(tau_k(i))of CH3 group,in a reference solution of (pure acetone) using Eq.(11.117)(no unit)
ln_tau1_1=Q_k(1,:)*(1-log((theta1_1*psi_11)+(theta1_18*psi_91))-(((theta1_1*psi_11)/((theta1_1*psi_11)+(theta1_18*psi_91)))+((theta1_18*psi_19)/((theta1_1*psi_19)+(theta1_18*psi_11)))));
//calculation of the residual activity coefficient(tau_k(i))of CH3CO group,in a reference solution of (pure acetone) using (Eq.11.117)(no unit)
ln_tau1_18=Q_k(2,:)*(1-log((theta1_1*psi_19)+(theta1_18*psi_99))-(((theta1_1*psi_91)/((theta1_1*psi_99)+(theta1_18*psi_91)))+((theta1_18*psi_99)/((theta1_1*psi_19)+(theta1_18*psi_99)))));
x2_1=nu_ki(3,:)/(nu_ki(3,:)+nu_ki(4,:));//calculation of mole fraction of CH3 group (pure n-pentane(2)) (no unit)
x2_2=nu_ki(4,:)/(nu_ki(3,:)+nu_ki(4,:));//calculation of mole fraction of CH2 group (pure n-pentane(2)) (no unit)
//As n-pentane contains only one main group (1)
ln_tau2_1=0;
ln_tau2_2=0;
//calculation of group residual activity coefficients for the given mole fraction of acetone in liquid phase (x1)(no unit)
//calculation of group mole fraction for CH3 group in Acetone and n-pentane using Eq.(11.115)(no unit)
x_1=((x1*nu_ki(1,:))+(x2*nu_ki(3,:)))/((((x1*nu_ki(1,:))+(x1*nu_ki(2,:))))+((x2*nu_ki(3,:))+(x2*nu_ki(4,:))));
//calculation of group mole fraction for CH2 group in n-Pentane using Eq.(11.115)(no unit)
x_2=((x2*nu_ki(4,:)))/((((x1*nu_ki(1,:))+(x1*nu_ki(2,:))))+((x2*nu_ki(3,:))+(x2*nu_ki(4,:))));
//calculation of group mole fraction for CH3CO group in Acetone using Eq.(11.115)(no unit)
x_18=((x1*nu_ki(2,:)))/((((x1*nu_ki(1,:))+(x1*nu_ki(2,:))))+((x2*nu_ki(3,:))+(x2*nu_ki(4,:))));
theta_1=(Q_k(1,:)*x_1)/((Q_k(1,:)*x_1)+(Q_k(2,:)*x_18)+(Q_k(3,:)*x_2));//calculation of surface area fraction of CH3 group (using Eq.11.118)(no unit)
theta_2=(Q_k(3,:)*x_2)/((Q_k(1,:)*x_1)+(Q_k(2,:)*x_18)+(Q_k(3,:)*x_2));//calculation of surface area fraction of CH2 group (using Eq.11.118)(no unit)
theta_18=(Q_k(2,:)*x_18)/((Q_k(1,:)*x_1)+(Q_k(2,:)*x_18)+(Q_k(3,:)*x_2));//calculation of surface area fraction of CH3CO group (using Eq.11.118)(no unit)
//calculation of group residual activity coefficient of CH3 using Eq.(11.117)(no unit)
ln_tau_1=Q_k(1,:)*(1-log((theta_1*psi_11)+(theta_2*psi_11)+(theta_18*psi_91))-((((theta_1*psi_11)+(theta_2*psi_11))/((((theta_1*psi_11)+(theta_2*psi_11))+(theta_18*psi_91)))+((theta_18*psi_19)/((theta_1*psi_19)+(theta_2*psi_19)+(theta_18*psi_11))))));
//calculation of group residual activity coefficient of CH2 using Eq.(11.117)(no unit)
ln_tau_2=Q_k(3,:)*(1-log((theta_1*psi_11)+(theta_2*psi_11)+(theta_18*psi_91))-((((theta_1*psi_11)+(theta_2*psi_11))/((((theta_1*psi_11)+(theta_2*psi_11))+(theta_18*psi_91)))+((theta_18*psi_19)/((theta_1*psi_19)+(theta_2*psi_19)+(theta_18*psi_11))))));
//calculation of group residual activity coefficient of CH3CO using Eq.(11.117)(no unit)
ln_tau_18=Q_k(2,:)*(1-log((theta_1*psi_19)+(theta_2*psi_19)+(theta_18*psi_99))-(((((theta_1+theta_2)*psi_91)/((theta_1*psi_11)+(theta_2*psi_11)+(theta_18*psi_91)))+((theta_18*psi_99)/((theta_1*psi_19)+(theta_2*psi_19)+(theta_18*psi_11))))));
//calculation of the residual contributions to the activity coefficients using Eq.(11.116)(no unit)
ln_gaamma1_r=(nu_ki(1,:)*(ln_tau_1-ln_tau1_1))+(nu_ki(2,:)*(ln_tau_18-ln_tau1_18));
ln_gaamma2_r=(nu_ki(3,:)*(ln_tau_1-ln_tau2_1))+(nu_ki(4,:)*(ln_tau_2-ln_tau2_2));
ln_gaamma1=ln_gaamma1_c+ln_gaamma1_r;//calculation of the ln(activity coefficient) using Eq.(11.104) (no unit)
ln_gaamma2=ln_gaamma2_c+ln_gaamma2_r;//calculation of the ln(activity coefficient) using Eq.(11.104) (no unit)
gaamma1=exp(ln_gaamma1);//calculation of the activity coefficient (no unit)
gaamma2=exp(ln_gaamma2);//calculation of the activity coefficient (no unit)

//OUTPUT

mprintf('The activity coefficients for the system using the UNIFAC method are : gamma1=%f \t gamma2=%f \t\n ', gaamma1,gaamma2);

//===============================================END OF PROGRAM===================================================


