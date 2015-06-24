//Transmission Lines : example 12-7 : (pg 592 & 593)
Zl=300;//load impedance
Zo=50;//characteristic impedance
v=2.07*10^8;//velocity in RG-8A/U cable
f=27*10^6;//operating frequency of citizen's band transmitter
Po=4;//output power of transmitter
l=10;//length of RG-8A/U cable
Rl=300;//input resistance of antenna
T=((Zl-Zo)/(Zl+Zo));//reflection coefficient
h=v/f;//length of cable in wavelength
le=l/h;//electrical length
x=Rl/Zo;//VSWR
y=((1+T)/(1-T));//VSWR
rp=(T)^2*Po;//reflected power
Pl=Po-rp;//load power
//part(a): The reflection coefficient
printf("\nT = ZL-Z0/ZL+Z0 = %.2f",T);
//part(b) : The electrical length of the cable in wavelengths(h)
printf("\nh = v/f = %.2f m",h);
mprintf("\nBecause the cable is 10m long,its electrical length is (%.f m)/(%.2f m/wavelength) = %.1fh",l,h,le);
//part(c) : The VSWR
printf("\nBecause load is resistive, \nVSWR = %.f",x);
printf("\nAn alternativr solution, because T is known, \nVSWR = 1+T/1-T = %.f",y);
//part(d) : absorbed power
mprintf("\nthe reflected voltage is T times the incident voltage,\nreflected voltage = %.2f W \nPload = %.2f W",rp,Pl);
