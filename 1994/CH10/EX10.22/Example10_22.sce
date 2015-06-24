//Chapter-10,Example10_22,pg10_62
E2line=50
R2=0.5
X2=3
E2=E2line/sqrt(3)
//at start
s=1
I2r=s*E2/(sqrt((R2^2)+((s*X2)^2)))
printf("rotor current atstart\n")
printf("I2r=%.3f A\n",I2r)
Rx=6
I2r=s*E2/(sqrt(((R2+Rx)^2)+((s*X2)^2)))
printf("rotor current for rheostat of 6 ohm\n")
printf("I2r=%.3f A\n",I2r)
//at full load
s=0.04
I2r=s*E2/(sqrt((R2^2)+((s*X2)^2)))
pf=R2/(sqrt((R2^2)+((s*X2)^2)))
printf("full load rotor current\n")
printf("I2r=%.3f A\n",I2r)
printf("full load power factor\n")
printf("pf=%.3f lagging\n",pf)
E2r=s*E2
printf("rotor e.m.f on full load\n")
printf("E2r=%.3f V",E2r)
