//Chapter 2 : Diffraction

clear;

//Variable declaration
m=1                      //first minimum
a=90*10**-16             //slit width
y=6*10**-3               //distance from central maximum
D=0.98                   //Screen distance

//Calculations
lamda=(y*a)/D/10**-17*10**3

//Result
mprintf("Wavelength of incident light lamda= %d Armstrong",lamda)

