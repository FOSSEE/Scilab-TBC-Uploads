//Example 7.5, Page Number 324
//The Function fpround(dependency) is used to round a floating point number x to n decimal places
//Depletion wavelength
clc;

n3=1//Energy Level
n2=2//Energy Level
Lz=10*(10**-9) //Width of the well in metres
m=9.1*(10**-31) //Mass of an electron in kilogram
me=0.068*m//effective mass
h=6.63*(10**-34) //Plancks Constant in meter square kilogram per second
c=3*(10**8) //Speed of light in meters per second
e1=1.6*(10**-19) //Charge of an electron in Coulombs

//By Equation 2.64

E=((h**2)/(me*8))*(((n2/Lz)**2)-((n3/Lz)**2)) // E is the energy difference between the levels in eV
E1=E/e1 //Conversion to electron volt
E1=fpround(E1,2)
l=(h*c)/E1 //l is the optical wavelength in metres
l1=l/e1
l1=l1*(10**6)
mprintf("The Energy Difference between the two levels is:%0.3feV\n",E1)
mprintf(" The Optical Wavelength is:%0.1f um",l1)
