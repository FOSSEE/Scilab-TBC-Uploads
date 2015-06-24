clear;
clc;
p_1 = 7;//tons/in^2
p_2 = 4;//tons/in^2
p_3 = 3;//tons/in^2
m = 4;
E = 13000;//tons/in^2
e_1 = (p_1/E)+(p_2/(m*E))-(p_3/(m*E));
e_2 = (p_2/E)+(p_1/(m*E))+(p_3/(m*E));
e_3 = (p_3/E)-(p_1/(m*E))+(p_2/(m*E));
printf('e_1 = %.6f,  tensile\n e_2 = %.4f, compressive\n e_3 = %.6f, tensile',e_1,e_2,e_3);
