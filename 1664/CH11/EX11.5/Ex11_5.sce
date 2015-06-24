
//Example NO.11.5
//Page No.336
clc;clear;
E0 = (8.854*10^-12);// [C^2/N.m^2].
Er = 6;//Dielectric constant.
C = (0.02*10^-6);//Capacitance -[F].
d = (0.002*10^-2);//Thickness of mica -[m].
A = ((C*d)/(E0*Er));//Area of the metal sheet.
printf("\nArea of the metal sheet required is %3.3e m^2",A);
