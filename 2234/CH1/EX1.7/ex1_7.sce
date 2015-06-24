clc;
l=5641*10^-10;   //wavelength in m
c=3*10^8;        //velocity in m/sec
n=c/l;         //calculating frequency
u=1.58;       //refractive index of glass
cg=c/u;        //calculating velocity of light in glass
l1=cg/n;      //calculating wavelegth in glass
disp(l1*10^10,"Wavelength in glass in Angstrom =");  //displaying result