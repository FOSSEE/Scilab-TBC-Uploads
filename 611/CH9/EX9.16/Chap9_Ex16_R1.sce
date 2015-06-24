// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-9,Example 16,Page 339
//Title: Enthalpy and entropy departure using the virial coefficient correlation
//================================================================================================================
clear 
clc

//INPUT
T=600;//temperature of the equimolar n-butane and n-octane mixture in K
P=16;//pressure of the equimolar n-butane and n-octane mixture in bar
Tc=[425.2;569.4];//critical temperature of n-butane and n-octane in K
Pc=[37.97;24.97];//critical pressure of n-butane and n-octane in bar
w=[0.199;0.398];//acentric factor of n-butane and n-octane (no unit)
Tr1=1.411;//reduced temperature of n-butane (no unit) taken from Example (9.7)
Tr2=1.054;//reduced temperature of n-octane (no unit) taken from Example (9.7)
Tr_12=1.24;//reduced temperature for computing the mixture interaction virial coefficient (no unit) taken from Example(9.7)
Pc_12=2.978;//Pc_ij in MPa taken from Example(9.7)
Tc_12=483.9;//Tc_ij in K taken from Example(9.7)
w_12=0.2985;// w_ij (no unit) taken from Example(9.7)
Bm=-309*10^-6;//second virial coefficient in m^3/mol taken from Example (9.7)
R=8.314;//universal gas constant in J/molK

//CALCULATION
//For convenience, n-butane is taken as 1 and n-octane as 2
y1=0.5;//mole fraction of n-butane in the equimolar mixture
y2=0.5;//mole fraction of n-octane in the equimolar mixture
dB0_dTr1=0.675/(Tr1^2.6);//calculation of dBij0/dTrij using Eq.(8.73) (no unit)
dB0_dTr2=0.675/(Tr2^2.6);//calculation of dBij0/dTrij using Eq.(8.73) (no unit)
dB1_dTr1=0.722/(Tr1^5.2);//calculation of dBij1/dTrij using Eq.(8.74) (no unit)
dB1_dTr2=0.722/(Tr2^5.2);//calculation of dBij1/dTrij using Eq.(8.74) (no unit)
dB0_dTr12=0.675/(Tr_12^2.6);//calculation of dBij0/dTrij using Eq.(9.114) (no unit)
dB1_dTr12=0.722/(Tr_12^5.2);//calculation of dBij1/dTrij using Eq.(9.115) (no unit)
dB1_dT=(R/(Pc(1,:)*10^5))*((dB0_dTr1)+(w(1,:)*(dB1_dTr1)));//calculation of dBij/dT using Eq.(9.112) (m^3/molK)
dB2_dT=(R/(Pc(2,:)*10^5))*((dB0_dTr2)+(w(2,:)*(dB1_dTr2)));//calculation of dBij/dT using Eq.(9.112) (m^3/molK)
dB12_dT=(R/(Pc_12*10^6))*((dB0_dTr12)+(w_12*(dB1_dTr12)));//calculation of dBij/dT using Eq.(9.112) (m^3/molK)
dBm_dT=((y1^2)*(dB1_dT))+((2*y1*y2)*(dB12_dT))+((y2^2)*(dB2_dT));//calculation of dBm/dT using Eq.(9.110) (m^3/molK)
dep_h=((Bm-(T*dBm_dT))*P*10^5)*10^-3;//calculation of enthalpy departure using Eq.(8.69) in kJ/mol
dep_s=-P*10^5*(dBm_dT);//calculation of entropy departure using Eq.(8.70) in J/molK

//OUTPUT
mprintf("\n The enthalpy departure of an equimolar mixture of n-butane and n-octane using the virial coefficient correlation = %f kJ/mol\n",dep_h);
mprintf("\n The entropy departure of an equimolar mixture of n-butane and n-octane using the virial coefficient correlation = %0.3f J/mol K\n",dep_s);

//===============================================END OF PROGRAM=================================================== 


