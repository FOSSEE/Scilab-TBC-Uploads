//Example 6.5, Page Number 263
//The Function fpround(dependency) is used to round a floating point number x to n decimal places
//Coherent lengths of conventional and laser radiation sources
clc;

//Assuming all lights are emitted from a low pressure Sodium Lamp

l=589*(10**-9) //Wavelength in meter
lw=5.1*(10**11) //Linewidth in Hertz
c=3*(10**8) //Speed of light in meters per second

//From equation 6.9
tc=1/lw //tc is the cavity lifetime in s

//From Equation 6.8
Lc=tc*c //Lc is the length of the Wave Train in metres
Lc=fpround(Lc,4)

disp(tc,"The Cavity lifetime in s:")
disp(Lc," The Length of the Wave Train or the Coherence Length in m is:")

//If Many modes are operating 
lw=1500*(10**6)//in Hz
tc=1/lw//tc is the cavity lifetime in s
Lc=tc*c
Lc=fpround(Lc,4)//Lc is the length of the Wave Train in metres

disp(tc,"The Cavity lifetime in s:")
disp(Lc," The Length of the Wave Train or the Coherence Length in m is:")

//If There is only one mode
lw=1*(10**6)//in Hz 
tc=1/lw//tc is the cavity lifetime in s
Lc=tc*c
Lc=fpround(Lc,4)//Lc is the length of the Wave Train in metres

disp(tc,"The Cavity lifetime in s:")
disp(Lc," The Length of the Wave Train or the Coherence Length in m is:")
