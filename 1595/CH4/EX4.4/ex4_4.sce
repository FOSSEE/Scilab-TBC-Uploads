//Single-Sideband Communications : example 4-4 : (pg 187)
a=455;
x=2000+1;
y=2000+3;
c=2000+455;
d=2455-2001;
e=2455-2003;
f=455-454;
g=455-452;
mprintf("\nRF and first mixer input: \n %.f kHz \n%.f kHz",x,y);
printf("\nlocal oscillator = %.f kHz",c);
mprintf("\nFirst mixer output: \n%.f kHz \n%.f kHz",d,e);//IF amp and second mixer input
printf("\nBFO = %.f kHz",a);
mprintf("\nSecond mixer output & audio amp: \n%.f kHZ \n%.f kHz",f,g);