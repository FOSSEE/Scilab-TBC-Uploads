clc
//initialization of varaibles
disp("From psychrometric chart ,")
hgdp=1061.8 
cpw=0.44
tdb=72 //F
cp=0.24
g=0.0071
//calculations
rh=0.42
sp=g
tdp=58 //F
hw=hgdp+cpw*tdb
h=cp*tdb+g*hw
//results
printf("Enthalpy = %.2f B/lb dry air",h)
printf("\n relative humidity = %.2f ",rh)
printf("\n specific humidity = %.2f ",sp)
printf("\n Dew point temperature = %d F",tdp)
