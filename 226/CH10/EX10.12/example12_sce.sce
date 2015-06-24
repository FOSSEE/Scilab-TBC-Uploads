//chapter 10
//example 10.12
//page 415
printf("\n")
printf("given")
Idss=5*10^-3;Vgsoff=6;Rs=3.3*10^3;Vdd=20;Rd=Rs;
disp("when Id=0, Vgs=Vs=0")
Id=0;Vgs=0;Vs=0;
disp(" at point A universal transfer characteristic Id/Idss and Vgs/Vgsoff=0")
Id=1.5*10^-3;
Vgs=Id*Rs
y=Id/Idss;
x=Vgs/Vgsoff;
disp(" point B the universal transfer charecteristic x=.825 and y=.3")
Id=.2*Idss
Vds=Vdd-Id*(Rd+Rs)