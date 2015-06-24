clc

T1=550 //K
T2=300 //K
Nc=2.8*10**19 //cm**-3
Ne=1.04*10**19 //cm**-3
k=8.617*10^-5 //eV/K
Eg=1.12

//ni^2=Nc*Ne*exp(-Eg/(k*T))

ni=sqrt(Nc*Ne*(T1/T2)^3*exp((-Eg/(k*T2))*(T2/T1)))
disp(ni ,"ni in cm^-3 is = ")

//n0=1.05*Nd
//n0=(Nd/2)+sqrt((Nd/2)^2+ni^2)      equation 1

a=(((1.05*2)-1)/2)^2            //simplifying and sloving the about equaton 1
b=ni^2
c=((4*a)-1)/4
Nd=sqrt(b/c)
disp(Nd,"Nd value in cm^-3 is=")


