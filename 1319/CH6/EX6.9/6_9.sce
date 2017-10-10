//Parameters calculated due to armature reaction

clc;
clear;

P=8;
Z=960;
A=2;//Wave Winding

Ia=100;

cmti=Ia*Z/(2*A*P);// Total number of magnetising turns

deff('y=dm(x)','y=cmti*2*x/180')// Function to find out demagnetising ampere turns

// The demagnetising and cros magnetising ampere turns of the three cases respectively

DM1=ceil(dm(0));
CM1=cmti-DM1;


DM2=ceil(dm(10)); // To avoid decimal error ceil is used
CM2=cmti-DM2;


DM3=ceil(dm(10*4)); // Mechanical degree * no of pair of poles = Electrical degree
CM3=cmti-DM3;

printf('i) Brushes along GNP. \n Demagnetising and cross magnetising ampere turns are %g AT/pole and %g AT/pole respectively \n\n',DM1,CM1)

printf('ii) Brushes are shifted by 10 electrical degress. \n Demagnetising and cross magnetising ampere turns are %g AT/pole and %g AT/pole respectively \n\n',DM2,CM2)

printf('iii) Brushes are shifted by 10 mechanical degress. \n Demagnetising and cross magnetising ampere turns are %g AT/pole and %g AT/pole respectively \n\n',DM3,CM3)

