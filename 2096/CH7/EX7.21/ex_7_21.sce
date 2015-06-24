
// Example 7.21 : principle strains , principal stess ,maximum shreat stress and location of principle planes
clc, clear
// given :
e1=60; // in microstrain
e2=48; // in microstrain
e3=-12; // in microstrain
E=200*10^9; // in N/m^2
mu=0.3;
e_max=((e1+e3)/2)+(1/sqrt(2))*sqrt((e1-e2)^2+(e2-e3)^2);
e_min=((e1+e3)/2)-(1/sqrt(2))*sqrt((e1-e2)^2+(e2-e3)^2);
a_max=E*(e1+e3)/(2*(1-mu))+((E/(sqrt(2)*(1+mu)))*sqrt((e1-e2)^2+(e2-e3)^2));
a_min=E*(e1+e3)/(2*(1-mu))-((E/(sqrt(2)*(1+mu)))*sqrt((e1-e2)^2+(e2-e3)^2));
tau_max=(E/(sqrt(2)*(1+mu)))*sqrt((e1-e2)^2+(e2-e3)^2);
A=atand((2*e2-e1-e3)/(e1-e3));
B=A/2;
disp(e_max*10^-6,"principle strain (e_max)")
disp(e_min*10^-6,"principle strain (e_min)")
disp(a_max*10^-12,"principle stresses (a_max) in MN/m^2")
disp(a_min*10^-12,"principle stresses (a_min)in MN/m^2")
disp(tau_max*10^-12,"maximm shear stress (tau_max) in MN/m^2")
disp(B,"location of the princinple planes (B)  in degree")
