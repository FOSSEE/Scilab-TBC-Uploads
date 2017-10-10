//Example 5.6
clc;

//A 4 1/2 digit display
n=4;            //No. of full digits
R=1/10^n;       //Resolution
disp(R,'Resolution')

//Resolution for 10V
R10=R*10;
disp(R10,'Resolution for 10V range')
printf('\n12.98 V is displayed as %2.3f',12.98)
printf('\n0.6973 V is displayed as %.4f',0.6973)
printf('\n0.6973 V is displayed as %.3f',0.6973)