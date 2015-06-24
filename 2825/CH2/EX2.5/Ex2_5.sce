//Ex2_5 Pg-88
clc
disp("sigma_n = u_n*e*N_d")
e=1.6*1e-19 //electron charge
sigma=5 //conductivity in mho/cm
un=3850 //mobility of electrons
Nd=sigma/(e*un) //concentration
printf("Number density of donor atoms = %.1f*1e16 per cm^3",Nd*1e-16)
//the answer in the book is wrong the correct answer is 0.8*1e16 per cm^3
