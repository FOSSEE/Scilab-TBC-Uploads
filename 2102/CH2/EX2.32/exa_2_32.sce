// Exa 2.32
clc;
clear;
close;
// Given data
e=1.6*10^-19;// in C
miu_e= 3800;// in cm v-s
miu_p= 1800;// in cm v-s
ni= 2.5*10^13;// per cm^3
N_D= 4.4*10^22*10^-7;// per cm^3
n=N_D;// per cm^3
p= ni^2/N_D;// holes/cm^3
sigma_i= ni*e*(miu_e+miu_p);// in (Ωcm)^-1
sigma_n= e*N_D*miu_e;// in (Ωcm)^-1
disp(sigma_i,"Intrinsic conductivity in (Ωcm)^-1 is : ")
disp(n,"Concentration of electrons per cm^3 is : ")
disp(p,"Concentration of holes per cm^3 is : ")
disp(sigma_n,"The conductivity in n-type Ge semiconductor in (Ωcm)^-1 is : ")
