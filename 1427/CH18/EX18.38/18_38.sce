//ques-18.38
//Calculating S and A and G for vaporization of benzene
clc
n=2;//moles of benzene
T=273+80.2;//boiling point (in K)
g=78;//molar weight of benzene (in g)
Lv=101;//latent heat of vaporization (in cal/g)
U=n*g*Lv;
H=U;
S=H/T;
G=H-T*S;
A=G;
printf("The entropy change is %.1f cal/K and A=G=%d.",S,A);
 
