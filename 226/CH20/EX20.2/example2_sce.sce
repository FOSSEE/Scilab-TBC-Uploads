//chapter 20
//example 20.2
//page 905
printf("\n")
printf("given")
Vs=30;Vd1=.7;Vg=.8;Ig=200*10^-6;
Vspk=1.414*Vs
disp(" at 5 degree")
es=Vspk*.087//  sin5=.087
disp(" at 90 degree")
es=Vspk
Vt=Vd1+Vg
disp(" to trigger at es=3.7V the R2 moving contact is at the top")
es=3.7;
Vr1=es-Vt
I1=1*10^-3;
R1=Vr1/I1
R=Vt/I1//R=R2+R3
disp(" to trigger at es =42.4 the R2 moving contact at the bottom")
es=42.4;
Vr3=Vt;
I1=es/(R+R1)
R3=Vt/I1
R2=R-R3