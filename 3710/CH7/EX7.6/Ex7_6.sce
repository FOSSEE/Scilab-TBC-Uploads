//Example 7.6, Page Number 329
//The Function fpround(dependency) is used to round a floating point number x to n decimal places
//Depletion region thickness
clc;

//Taking Silicon Diode with moderately doped N-region
V=100 //Applied Voltage in volts
Nd=5*(10**21) //in per metre cube
eo=8.85*(10**-12) //Absolute permittivity in farads per meter
er=11.7
e=1.6*(10**-19) //Charge of an electron in Coulombs

//Using equation 7.31
xn=sqrt((2*eo*er*V)/(e*Nd))

ac=10**5 //Absorption Coefficient per meter

//ignoring Fresnel reflection
f=1-exp(-1*xn*ac)
f=fpround(f,3)

disp(xn,"The Depletion region thickness in m:")
mprintf(" The Fraction of the incident radiation absorbed is: %.1f",f)

//This is insufficient if a high efficiency photodiode is required
//To absorb 80% of radiation,depletion region thickness has to be 20um wide
xn=xn*(10**6)//This conversion is done to get the xn value as 5 which is used in the calculation of V1
t=20
V1=V*((t/int(xn))**2)
mprintf("\nHence the required applied voltage is:%d V",V1)
