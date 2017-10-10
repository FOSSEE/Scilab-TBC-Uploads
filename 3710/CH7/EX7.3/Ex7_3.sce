//Example 7.3, Page Number 311
//The Function fpround(dependency) is used to round a floating point number x to n decimal places
//Minimum detectable signal
clc;

A=1000*(10**-6) //Cathode Area in metre square
wf=1.25 //Work function in eV
T=300 //Cathode temperature in Kelvin
e=1.6*(10**-19) //Charge of an electron in Coulombs
k=1.38*(10**-23) //Boltzman Constant in meter square kilogram per second square Kelvin
a1=1.2*(10**6) //constant for pure metals in Ampere per metre square kelvin square
l=0.5*(10**-6) //Wavelength in meters
q=0.25 //Quantum Efficiency
h=6.63*(10**-34) //Plancks Constant in meter square kilogram per second
c=3*(10**8) //Speed of light in meters per second
f=1//bandwidth in hertz

//From equation 7.11
e1=(k*T)/e 
e1=fpround(e1,3)
c2=(-1*wf)/e1
c2=fpround(c2,4)
c3=exp(c2)
it=a1*A*(T**2)*c3 //it is the current generated in Amperes

mprintf("The Thermionic Emission Current is:%.2e A\n",it)

//Using Equation 7.9
r=(q*e*l)/(h*c) //r is the responsivity in A/W
r=fpround(r,2)
mprintf(" The Responsivity is:%0.1f A/W\n",r)

//Using Equation 7.13
W=(sqrt(2*it*e*f))/r //W is the minimum detectable power in Watts
mprintf(" The Minimum detectable signal power is:%.3e W",W)

//The answer provided in the textbook is wrong
