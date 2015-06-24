clc
pathname=get_absolute_file_path('7_6_3.sce')
filename=pathname+filesep()+'763.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
disp("Mass balance on Water,")
disp("m3+m1=m2")
disp("Energy balance,")
disp("m3*H3+m1*H1=m2*H2")
A=[1,-1;H2,-H1]
b=[m3;m3*H3]
C=A\b
//here we solved two linear equations simultaneously.
m2=C(1,1)
m1=C(2,1)
printf(" Input flowrate,m1=%f Kg/h",m1)
printf(" \n Output flowrate, m2=%f Kg/h",m2)
disp("From tables,Vdot=3.11 m^3/kg")
Vdot=3.11
printf(" Volumetric input flowrate=%f m^3/h",m1*Vdot)