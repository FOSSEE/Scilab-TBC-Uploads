//Page Number: 96
//Example 2.9
clc;
//Given,
c=3D+8; //m/s
fc=3D+9; //Hz

//Cutoff wavelength
lamc=c/fc; 
a=lamc/2;//m
a=a*100;//cm
disp('Dimensions:');
disp('cm',a,'a:');
b=a/2; //cm
disp('cm',b,'b:');
