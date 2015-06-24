//chapter 10
//example 10.13
//page 416
printf("\n")
printf("given")
Idss=9*10^-3;Vgsoff=7;Vdd=22;R1=4.7*10^6;R2=1*10^6;Rs=2.7*10^3;Rd=Rs;
Vg=(Vdd*R2)/(R1+R2)
disp("when Vgs=0, Vgs/Vgsoff=0")
Id=Vg/Rs
disp("when Vgs/Vgsoff=.5")
Vgs=.5*(-Vgsoff)
Id=(Vg-Vgs)/Rs
x=Id/Idss
disp(" point Y on universal characteristic x=.3 and Vgs/Vgsoff=.5")
disp("draw voltage divider bias line through X nad Y where bisa line intersect transfer curve")
Id=.29*Idss
Vds=Vdd-Id*(Rd+Rs)