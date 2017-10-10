//Example 1.3, Page Number 22

clc;
D=0.1 //Diameter of the Objective Lens
d1=500 //Distance from the source
l =550*(10**-9) //Wavelength
p=1 //First Order
N=40*600 //The diffraction grating is 40 mm wide and has 600 lines/mm

Smin=(d1*l)/D  //Smin is the minimum separation of the Sources
Smin=Smin*(10**3)
mprintf("\t(A)The Minimum Seperation Between the Sources is %.2f mm\n",Smin);

dl=l/(N*p)//l/dl=p*N
dl=dl*(10**9)
mprintf("\t(B)The Minimum Wavelength Difference which may be resolved is %.3f nm",dl)
