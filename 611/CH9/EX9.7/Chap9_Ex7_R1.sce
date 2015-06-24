// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-9,Example 7,Page 330
//Title: Second virial coefficient
//================================================================================================================
clear 
clc

//INPUT
T=600;//temperature of the equimolar n-butane and n-octane mixture in K
Tc=[425.2;569.4];//critical temperature of n-butane and n-octane in K
Pc=[37.97;24.97];//critical pressure of n-butane and n-octane in bar
vc=[255.0*10^-6;486.0*10^-6];//critical molar volume of n-butane and n-octane in m^3/mol
Zc=[0.274;0.256];//compressibility factor of n-butane and n-octane corresponding to Tc,Pc (no unit)
w=[0.199;0.398];//acentric factor of n-butane and n-octane (no unit)
R=8.314;//universal gas constant in J/molK

//CALCULATION
//For convenience, n-butane is taken as 1 and n-octane as 2
y1=0.5;//mole fraction of n-butane in the equimolar mixture
y2=0.5;//mole fraction of n-octane in the equimolar mixture
K_12=1-((8*((vc(1,:)*vc(2,:))^(1/2)))/((((vc(1,:))^(1/3))+((vc(2,:))^(1/3)))^3));//calculation of the binary interaction parameter using Eq.(9.94)
Tc_12=(((Tc(1,:))*(Tc(2,:)))^(1/2))*(1-K_12);//calculation of Tc_ij using Eq.(9.89) in K
w_12=(w(1,:)+w(2,:))/2;//calculation of w_ij using Eq.(9.92) (no unit)
Zc_12=(Zc(1,:)+Zc(2,:))/2;//calculation of Zc_ij using Eq.(9.91) (no unit)
vc_12=((((vc(1,:))^(1/3))+((vc(2,:))^(1/3)))/2)^3;//calculation of vc_ij using Eq.(9.90) in m^3/mol
Pc_12=((Zc_12*R*Tc_12)/vc_12)*10^-6;//calculation of Pc_ij using Eq.(9.93) in MPa
Tr_12=T/Tc_12;//calculation of reduced temperature for computing the mixture interaction virial coefficient (no unit)
B_12_0=0.083-(0.422/(Tr_12^(1.6)));//calculation of B_ij0 using Eq.(9.87)
B_12_1=0.139-(0.172/(Tr_12^(4.2)));//calculation of B_ij1 using Eq.(9.88)
B_12=((R*Tc_12)/(Pc_12*10^6))*(B_12_0+(w_12*B_12_1));//calculation of the mixture interaction virial coefficient using Eq.(9.86) in m^3/mol
Tr1=T/Tc(1,:);//calculation of reduced temperature of n-butane (no unit)
B_11_0=0.083-(0.422/(Tr1^(1.6)));//calculation of B_i0 for the pure component (n-butane) using Eq.(9.87)
B_11_1=0.139-(0.172/(Tr1^(4.2)));//calculation of B_i1 for the pure component (n-butane) using Eq.(9.88)
B_11=((R*Tc(1,:))/(Pc(1,:)*10^5))*(B_11_0+(w(1,:)*B_11_1));//calculation of the pure component (n-butane) second virial coefficient using Eq.(9.86) in m^3/mol
Tr2=T/Tc(2,:);//calculation of reduced temperature of n-octane (no unit)
B_22_0=0.083-(0.422/(Tr2^(1.6)));//calculation of B_i0 for the pure component (n-octane) using Eq.(9.87)
B_22_1=0.139-(0.172/(Tr2^(4.2)));//calculation of B_i1 for the pure component (n-octane) using Eq.(9.88)
B_22=((R*Tc(2,:))/(Pc(2,:)*10^5))*(B_22_0+(w(2,:)*B_22_1));//calculation of the pure component (n-octane) second virial coefficient using Eq.(9.86) in m^3/mol
Bm=((y1^2)*B_11)+((2*y1*y2)*B_12)+((y2^2)*B_22);//calculation of the second virial coefficient using Eq.(9.85) in m^3/mol

//OUTPUT
mprintf("\n The second virial coefficient for an equimolar mixture of n-butane and n-octane at 600K = %f m^3/mol\n",Bm);

//===============================================END OF PROGRAM===================================================

