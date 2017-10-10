//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex10_7.sce

clc;
clear;
Vl_not=400;  //No load voltage in volt
Vl_sc=50;    //Blocked rotor voltage in volt
I_not=20;      //No load current in Ampere
Isc=60;       //Blocked rotor currnet in Ampere
W1_not=5e3;       //watt meter readings for no load test in watt
W2_not=-3.2e3;    //watt meter readings for no load test in watt
Wsc1=2.3e3;       //watt meter readings for blocked rotor test in watt
Wsc2=0.75e3;      //watt meter readings for blocked rotor test in watt
Vdc=18; //dc voltage in volt
Idc=60;  //dc line current in Ampere

printf("\n (a)")
R1=(Vdc/Idc)/2;
printf("\n  R1=%1.2f ohm",R1)
P_not=W1_not+W2_not;
V_not=Vl_not/sqrt(3);
cos_phi_not=P_not/(3*V_not*I_not);
R_not=V_not/(I_not*cos_phi_not);
printf("\n  R0=%2.3f ohm",R_not)
//R_not answer vary dueto round off error in v_not and cos_phi_not
X_not=V_not/(I_not*sqrt(1-cos_phi_not^2));
printf("\n  X0=%2.3f ohm",X_not)
Psc=Wsc1+Wsc2;
Vsc=Vl_sc/sqrt(3);
cos_phi_sc=Psc/(3*Vsc*Isc);
R2_dash=((Vsc/Isc)*cos_phi_sc)-R1;
printf("\n  R2dash=%1.3f ohm",R2_dash)
X1=((Vsc/Isc)*sqrt(1-cos_phi_sc^2))/2;
printf("\n  X1=%1.3f ohm",X1)
X2_dash=X1;
printf("\n  X2dash=%1.3f ohm \n",X2_dash)

printf("\n (b)")
ns=25;
s=R2_dash/X2_dash;  //Slip for maximum torque
pf_max=1/sqrt(2);
Ps=(3*V_not^2)/sqrt((R1+R2_dash/s)^2+(2*X1)^2);
Pc=(3*V_not^2*(R1+R2_dash))/((R1+R2_dash/s)^2+(2*X1)^2);   //Stator copper loss in  kw
Pin=Ps-Pc;
T=Pin/(2*%pi*ns);
printf("\n  Slip for pullout torque=%g",s)
printf("\n  Magnitude of pullout torque=%3.2f Nm",T)
//There is a mistake in the book solution in part (b)
//The calculated Ps  value is wrong 
//Hence T answer vary
