//Example 3.3, Page Number 105
//The Function fpround(dependency) is used to round a floating point number x to n decimal places
//Power Requirements for Modulation
clc;

//Given Values
bw=10**9 //Frequency Bandwidth in Hertz
d=25/2*(10**-3) //Diameter of Circular Aperture in meter
l=30*(10**-3) //Length in meters
wl=633*(10**-9) //Wavelength in meters
k=8.85*(10**-12) //Permittivty of free space
pr=%pi/30//Phase Retardation/Phase difference at freq bandwidth of (10**9) HZ 

//The following values have been taken from Table 3.1 on page no. 100
ur=50//Relative permeability for KD*P
r=26.4*(10**-12)//Linear Electro Optic Coefficient for KD*P in pm per volt
no=1.51//value for KD*P

P=((((wl**2)*%pi*((d)**2)*bw*k*ur)/(4*%pi*((r)**2)*(no**6)*l))*(pr**2)) //P is the power requirements in W
P=fpround(P,1)

mprintf("\n");
mprintf("The Power Requirements for Modulation using a Pockels cell is %.1f W",P);
