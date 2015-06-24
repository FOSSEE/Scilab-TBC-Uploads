clc
// initialization
clear
d=10 //cm
id=9.99 //cm
t=3 //mm
E=1.0*10^6 //kg/cm^2
a=2.02*10^-5 // degree/celcius
// part(a)
Tr=10 //degree C
T=(d-id)/id*1/a
printf('part(a) \n The sleeve must be heated to %.1f degree C or more for this purpose',T+Tr)

//part(b)
s_th=a*T*E
p=s_th*t*2/(d*10)
printf('\n part(b) \n The pressure developed between the rod and sleeve is %d kg/cm^2',p)

// part(c)
f=0.2
o=10 // overlap: cm
A=%pi*d*o
F=f*p*A
printf('\n part (c) \n The axial force required is %d kg',F)

//part (d)
// linked to part c
T2=20 //degree C
a2=1.17*10^-5 //  /degree C
Ts=(a-a2)*(T2-Tr)*E
Ts=s_th-Ts
p2=p*Ts/s_th
F2=F*Ts/s_th
printf('\n part(d)\n The pressure developed between the rod and sleeve is %.1f kg/cm^2',p2)
printf('\n The axial force required is %d kg',F2)
//part(e)
T3=Tr+(s_th/((a-a2)*10^6))
printf('\n part(e) \n The temperature at which the sleeve comes off easily is %.1f C',T3)

// calculations in the text: rounding off errors

