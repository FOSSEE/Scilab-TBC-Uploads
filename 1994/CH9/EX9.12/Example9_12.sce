//Chapter-9,Example9_12,pg 9_46
V=250
Ra=0.5
Rsh=250
Ia1=20
Ish1=V/Rsh
Eb1=V-Ia1*Ra
N1=600
N2=800
//T1=T2
//Ish1*Ia1=Ish2*Ia2
//Ish2*Ia2=20............(1)
//(N1/N2)=(Eb1/Eb2)*(Ish2/Ish1)...........(2)
//using (1) and (2)
//240*(Ish2^2)-187.5*Ish2+7.5=0.........(3)
b=-187.5
a=240
c=7.5
Ish2=(-b+sqrt(((b^2)-4*a*c)))/(2*a)//neglecting lower value
Rx=(V/Ish2)-Rsh
printf("resistance in shunt feild\n")
printf("Rx=%.3f ohm",Rx)
