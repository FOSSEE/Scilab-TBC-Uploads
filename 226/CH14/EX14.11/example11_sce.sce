//chapter 14
//example 14.11
//page 619
printf("\n")
printf("given")
Vi=10*10^-3;Vn=1;R1=33*10^3;R2=300;R5=15*10^3;R4=15*10^3;Vi2=-10*10^-3;R3=R1;R6=15*10^3;R7=R6;
Acl=((2*R1+R2)/R2)*(R5/R4)
disp("at junction of R1 and R2")
Vb=Vi+Vn
disp("at junction of R2 and R3")
Vc=Vi2+Vn
disp(" current through R2")
I2=(Vb-Vc)/R2
disp("at the output of A1")
Va=Vb+(I2*R1)
disp("at output of A2")
Vd=Vc-(I2*R3)
disp("at junction of R6 and R7")
Vf=Vd*(R7/(R6+R7))
disp("at junction of R4 and R5")
Ve=Vf
disp("current through R4")
I4=(Va-Ve)/R4
disp("at output of A3")
Vg=Ve-(I4*R5)