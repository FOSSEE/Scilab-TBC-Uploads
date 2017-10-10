//Example 4.3, Page Number 158
//The Function fpround(dependency) is used to round a floating point number x to n decimal places
clc;

d=0.2*(10**-3) //Chip Diameter in meter
d1=1 //Distance in Meter
l=550*(10**-9 ) //Wavelength in Meter
q=0.001 //External Quantum Efficiency
i=50*(10**-3) //Operational Current
h=6.6*(10**-34)//Plancks Constant
c=3*(10**8)//Speed of Light
e=1.6*(10**-19)//Charge of an electron

theta=(d/2) 
mprintf("Angle Theta of Emitting Area :%f\n",theta)
mprintf(" Since theta is less than one, the LED acts as a Point Source\n")

W=((h*c)/l)*q*(i/e) //W is the Total Radiant Power
W=fpround(W,6)

mprintf(" The Total Radiant Power is :%.2e W\n",W)

//From the graph(Fig 1.24 Page No.33)
l1=600 //Average Luminosity 

lf=W*l1 //lf is the luminous flux from the source
lf=fpround(lf,3)

mprintf(" The Luminous Flux from the source is:%.2e lm\n",lf)

li=lf/(2*3.14)//li is the luminous intensity at normal incidence since flux is distributed over angle 2PI
li=fpround(li,4)

mprintf(" The Luminous Intensity at normal incidence is: %.2e candela\n",li)

X = [400,500,555,600,650,700]
V = [0.0,0.3,1.0,0.7,0.3,0.0]
plot(X,V);
xlabel("Wavelength in nm")
ylabel("V")
title("Fig 1.24")

