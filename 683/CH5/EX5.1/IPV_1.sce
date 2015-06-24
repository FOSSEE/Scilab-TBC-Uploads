// sum 5-1
clc;
clear;
p=2;
Rm=220;
//tensile hoop or circumferential stress= sigt
sigr=-2;
//sigt=(p*Rm)/t;
Sa=230/2;
//t1=thickness according to maximum principal stress theory
//t2=thickness according to maximum shear stress theory
t1=(p*Rm)/Sa;
t2=(p*Rm)/(Sa+sigr);

  // printing data in scilab o/p window
  printf("t1 is %0.2f mm ",t1);
  printf("\n t2 is %0.3f mm ",t2);