//Example 17.3
clc
//From figure 17.7
disp('The nodal equations are')
disp('I1=0.35*V1-0.2*V2-0.05*V3')
disp('I2=-0.2*V1+1.7*V2-1*V3')
disp('I3=-0.05*V1-1*V2+1.3*I3')
//We need to find input impedance
disp('Yin=dely/del11')
disp('Zin=1/Yin')
//In matrix form
A=[0.35 -0.2 -0.05;-0.2 1.7 -1;-0.05 -1 1.3]
dely=det(A)
printf("\n dely=%f S^3",dely);
//Eliminating first row and first column to find del11
B=[1.7 -1;-1 1.3]
del11=det(B)
printf("\n del11=%f S^2",del11);
Yin=dely/del11
printf("\n Yin=%f S",Yin);
Zin=1/Yin
printf("\n Zin=%f ohm",Zin);
