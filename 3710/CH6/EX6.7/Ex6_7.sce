//Example 6.7, Page Number 266
//Depth of Focus
//clc;

//For A Carbon Dioxide Laser Beam 
l=10.6*(10**-6) //Wavelength in meter
d=50/2*(10**-3) //radius in meter
fl=200*(10**-3) //Focal Length in meter

//Using Equation 6.10
rs=(l*fl)/(%pi*(d)) //rs is the radius of the focused spot

//Suppose that spot size can be tolerated by 10 percent
w=1.1
w1=1

fd=((%pi*(rs**2))*sqrt((w**2)-(w1**2)))/l //fd is the depth of focus
fd=fd*(10**3)
rs=rs*(10**6)
rs=ceil(rs)
mprintf("The Radius of the Focussed spot is %d um\n",rs)
mprintf(" The Depth of the Focus is %.2f mm",fd)

//The answers provided in the textbook are wrong
