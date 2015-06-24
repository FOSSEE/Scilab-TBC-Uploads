// Exa 9.1
clc;
clear;
close;
// Given data
disp("Part (i) : For dry saturated steam at 17.8 bar")
p= 17.8;// in bar
p1= 17.5;// in bar
p2= 18.0;// in bar
Vs1= 0.1135;// in litre/kg
Vs2= 0.1104;// in litre/kg
Hs1= 2796.1;// in kJ/kg
Hs2= 2796.4;// in kJ/kg
L1= 1918;// in kJ/kg
L2= 1912;// in kJ/kg
phi_s1= 6.389;// in kJ/kg K
phi_s2= 6.379;// in kJ/kg K
Vs= Vs1-(Vs2-Vs1)/(p2-p1)*(p-p1);// in litre/kg
Hs= Hs1+(Hs2-Hs1)/(p2-p1)*(p-p1);// in kJ/kg
L= L1- (L1-L2)/(p2-p1)*(p-p1);// in kJ/kg
phi_s= phi_s1- (phi_s1-phi_s2)/(p2-p1)*(p-p1);// in kJ/kg K
disp("Part (i) : For dry saturated steam at 17.8 bar")
disp(Vs,"The specific volume in litre/kg is : ");
disp(Hs,"The enthalpy in kJ/kg is : ");
disp(L,"The latent heat in kJ/kg is : ");
disp(phi_s,"The entropy in kJ/kg K")
disp("Part (ii) : For superheated steam at 16 bar and 340°C")
T= 340;// in K
T1= 300;// in K
T2= 350;// in K
Vsup1= 0.1585;// in m^3/kg
Vsup2= 0.1743;// in m^3/kg
Hsup1= 3030;// in kJ/kg
Hsup2= 3142;// in kJ/kg
phi_sup1= 6.877;// in kJ/kg K
phi_sup2= 7.063;// in kJ/kg K
Vsup= Vsup1+(Vsup2-Vsup1)/(T2-T1)*(T-T1);// in m^3/kg
Hsup= Hsup1+(Hsup2-Hsup1)/(T2-T1)*(T-T1);// in kJ/kg
phi_sup= phi_sup1+(phi_sup2-phi_sup1)/(T2-T1)*(T-T1);// in kJ/kg
disp(Vsup,"The specific volume in m^3/kg is : ");
disp(Hsup,"The enthalpy in kJ/kg is : ");
disp(phi_sup,"The entropy in kJ/kg K is : ")
