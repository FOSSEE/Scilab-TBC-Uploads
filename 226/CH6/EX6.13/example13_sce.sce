//chapter 6
//example 6.13
//page 279
printf("\n")
printf("given")
Io=50*10^-9;Vbe=.7;Vbc=-10;Af=.995;Ar=.5;Vt=26*10^-3;n=2;Vd=-10;
x=Vd/(n*Vt);
Idc=(Io*((2.73^-x)-1))*10^9;
Idc=Io*(-1)
y=Vbe/(n*Vt);
Ide=Io*((2.73^y)-1)
I1=Af*Ide
I2=Ar*Idc
Ic=I1-Idc
Ie=Ide-I2
Ib=Ie-Ic