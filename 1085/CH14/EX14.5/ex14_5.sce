//Exam:14.5
clc;
clear;
close;
q=1.6*10^(-19);//charge (in C)
d_1=0.06//shift of the titanium ion from the body centre (in Å)
d_2=0.08//shift of the oxygen anions of the side faces (in Å)
d_3=0.06//shift of the oxygen anions of the top and bottom face (in Å) 
D_1=d_1*10^(-10);//shift of the titanium ion from the body centre (in m)
D_2=d_2*10^(-10);//shift of the oxygen anions of the side faces (in m)
D_3=d_3*10^(-10);//shift of the oxygen anions of the top and bottom face (in m)
U_1=4*q*D_1;//dipole moment due to two O2– ions on the four side faces(in C-m)
U_2=2*q*D_2;//dipole moment due to one O2– on top and bottom(in C-m)
U_3=4*q*D_3;//dipole moment due to one Ti4+ ion at body centre(in C-m)
U=U_1+U_2+U_3;//Total dipole moment(in C-m)
V=4.03*((3.98)^2)*10^(-30);//volume(in m3)
P=U/V;//polarization the total dipole moments per unit volume
disp(P,'polarization(in C/m^2)=');
disp(U,'==')