clear;
clc;
l = 12;//feet
d1_A = 1;//inch
d2_A = 2;//inches
l1_A = 4;//inches
l2_A = 8;//inches
d1_B = 1;//inch
d2_B = 2;//inches
l1_B = 8;//inches
l2_B = 4;//inches
p_A = 15/2;// tons/in^2
p_B = sqrt((2/3)*p_A^2);// tons/in^2
r1 = (9*%pi/8)/(3*%pi/4);//ratio of energies if both bars are allowed to reach the proof stress
V_A  = 0.25*%pi*d1_A^2*l1_A+ 0.25*%pi*d2_A^2*l2_A;// in^3
V_B  = 0.25*%pi*d1_B^2*l1_B+ 0.25*%pi*d2_B^2*l2_B;// in^3
r2 = ((3/16)*p_B^2)/((1/12)*p_B^2);//ratio of enrgies
printf('Maximum instantaneous stress produced is p_B = %.2f tons/in^2',p_B);
printf('\n Ratio of energies stored if both bars are allowed to reach the proof stress is r1 = %.2f ',r1);
printf('\n Ratio of energies stored at the same stress per unit volume, is r2 = %.2f ',r2);
