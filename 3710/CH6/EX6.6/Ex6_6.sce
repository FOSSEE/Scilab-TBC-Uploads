//Example 6.6, Page Number 266
//Focused Power Density
clc;

P=10*(10**-3) //Power of the He-Ne Laser in W
F=1 //F Number
l=633*(10**-9) //Wavelength of the laser in m

//From equation 6.10a
rs=(2/%pi)*l*F //rs is the radius of the focused spot in m

P1=(P*%pi)/((2*l)**2) //P1 is the Power per unit area in Watt per meter square

mprintf("The Radius of the Focused Spot is %.2e m\n",rs)
mprintf("The Power Per unit Area is:%.2e Watt per meter square",P1)
