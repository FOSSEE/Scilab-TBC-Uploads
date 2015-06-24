//Example No. 6.5
clc;
clear;
close;
format('v',6);

//Given Data : 
Ist=300;//A
X=50/100;//tapping
Imotor=X*Ist;//A
disp(Imotor,"Motor current in A : ");
Iline=X^2*Ist;//A
disp(Iline,"Line current in A : ");
ratio=X^2;//Ratio of starting Torque 50% tapping to full voltage torque
disp(ratio,"Ratio of starting Torque 50% tapping to full voltage torque : ");
