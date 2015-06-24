//Ex10_4

clc;

// Given:
conc=4;// 4 mg per 1 l
a1=1600;// labelled solution of PbSO4
a2=900;// activity of filtrate (in solution)
M=303.2;// molecular wt of PbSO4
l=6.022*10^23;
// Solution:
y=20*4/1000;// 20 ml will contain y mg
z=y*a2/a1;// final amount of PbSO4 in solution
a3=a1-a2;// activity on surface
// Let the total PbSO4 on surfaceof precipitate be x
// Asumming exchange equilibrium is established we have

x=a3*z/a2;// in mg
molecules=x*10^-3*(l)/M;
// Give that surface area of 1 PbSO4 = 18.4*10^-16 cm^2
A=molecules*18.4*10^-16;

printf("The surface area of 1 gm of precipitate sample is = %f cm^2/gm",A)








