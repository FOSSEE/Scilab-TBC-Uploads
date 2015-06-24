clear
clc

Ia=10*exp(%i *30 *%pi/180)
Ib=15*exp(%i *-60*%pi/180)
Ic=0-(Ia+Ib)

Iac=(Ia +Ia +Ib)/3
Icb=Ic +Iac
Iba=Iac-Ia
Ia0=(Ia +Ib +Ic)/3

a=exp(%i * 2 * %pi/3)

Ia1=(Ia + a*Ib + a*a*Ic)/3
Ia2=(Ia + a*Ic + a*a*Ib)/3

disp(round(Ia1*100)/100, "Ia1","(a)Symmetrical Line Components")
disp(round(Ia2*100)/100, "Ia2")
disp(round(Ia0*100)/100, "Ia0")

Iac0=(Iac+Icb+Iba)/3
Iac1=(Iac+ a*Icb+ a*a*Iba)/3
Iac2=(Iac+a*a*Icb+a*Iba)/3

disp(round(Iac1*100)/100, "Iac1","(b)Symmetrical Delta Components")
disp(round(Iac2*100)/100, "Iac2")
disp(round(Iac0*100)/100, "Iac0")
