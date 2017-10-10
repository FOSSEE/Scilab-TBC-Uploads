//Chapter 1 : Wave Optics

clear;

//Variable declaration
D15=5.90*10**-3        //diameter of 15th ring
D5=3.36*10**-3         //diameter of 5th ring
m=10
R=100

//Calculation
lamda=(D15**2-D5**2)/(4*m*R)/10**-9*10**3

//Result
mprintf("Wavelength of liquid used= %d Armstrong",lamda)

