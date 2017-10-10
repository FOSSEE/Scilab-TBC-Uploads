//Example 5.5, Page Number 209
//Threshold Current Density
clc;
//For GaAs Junction
l=0.84*(10**-6) //Wavelength in meter
w=1.45*(10**13) //Linewidth in Hertz
y=3.5*(10**3) //Loss Coefficient per meter
n=3.6 //Refractive Index for GaAs
q=1 //Quantam Efficiency
le=300*(10**-6)//Length in meter
d=2*(10**-6) //in metres
R=0.32 //Reflectance
c=3*(10**8) //Speed of light in m/s
e=1.6*(10**-19) //Charge of electron in Coulombs

v=c/l //Frequency

k=y+((1/(2*le))*log1p(1/(R*R)))//k is the threshold gain 
k=fpround(k,0)

J=(8*%pi*w*e*(n**2)*d*k*(v**2))/(c**2)
J=J*(10**-6)
mprintf("\tThe Threshold Gain is %d /m\n",k)
mprintf("\tThe Threshold Current Density is %.2f A/mm square\n",J)
