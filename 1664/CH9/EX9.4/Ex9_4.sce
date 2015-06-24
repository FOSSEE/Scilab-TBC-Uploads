
//Example No.9.4.
//Page No.268.
clc;clear;
d = 3*10^(4);//Conductivity -[S/m].
e = 1.6*10^(-19);//Value of electron.
ue = 0.13;
uh = 0.05;
ni = 1.5*10^(16);
disp('For N-type semiconductor')
Nd = (d/(e*ue));
printf("\ni)The concentration of electron is %3.3e m^-3",Nd);
p = ((ni)^(2)/(Nd));
printf("\nii)The concentration of holes is %3.3e m^-3",p);
disp('For P-type semiconductor')
Na = (d/(e*uh));
printf("\ni)The concentration of holes is %3.3e m^-3",Na);
n = ((ni)^(2)/(Na));
printf("\nii)The concentration of electron is %3.3e m^-3",n);
