//Example 8.10, Page Number 390
//Material dispersion for a laser and LED source
clc;
clf();
//Fig 8.26 Page No 390
X=[0.5,0.75,1,1.25,1.4,1.5,1.75,2,2.5]//Values as observed from graph
V=[0.07,0.04,0.02,0.0,-0.01,-0.02,-0.03,-0.04,-0.06]//Values as observed from graph
plot(X,V);
xlabel("Wavelength (um)")
ylabel("D (Dimensionless Quantity)")
title("Fig 8.26")

l=10.0**3 //length of the fiber in kilometer
w1=850.0*(10**-9) //Wavelength in meter
lw=50.0*(10**-9) //Linewidth in meter
w2=1550.0*(10**-9) //Wavelength 2 in meter
lw2=3.0*(10**-9) //Linewidth 2 in meter
c=3.0*(10**8) //Speed of light in meters per second


mprintf(" The Dimensionless Quantity is calculated from Figure 8.26\n")
d1=2.14*(10**-2) //For w1 after observation
d2=-1.02*(10**-2) //For w2 after observation

//From equation 8.34
t1=(l/c)*d1*(lw/w1) //t1 is the material dispersion effects for w1
t2=(l/c)*d2*(lw2/w2) //t2 is the material dispersion effects for w2

mprintf(" (a) The Material Dispersion Effect Parameter for the LED is %.1e s\n",t1)
mprintf(" (b) The Material Dispersion Effect Parameter for the Laser is %.1e s",-1*t2)
