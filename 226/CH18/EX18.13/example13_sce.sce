//chapter 18
//example 18.13
//page 799
printf("\n")
printf("given")
disp(" an MC34063 controller is for step down transformer")
Ib=-400*10^-3;I1=1*10^-3;Vref=1.25;V0=12;Ip=1;ton=8.6*10^-6;
R1=Vref/I1
R1=1.2*10^3;//use standard value
I1=Vref/R1
R2=(Vo-Vref)/I1
Rsc=.33/Ip
Ct=4.8*10^-5 *ton