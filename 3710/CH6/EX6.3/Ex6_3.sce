//Example 6.3, Page Number 256
//Power in Q-switched pulses 
clc;

//Using the Energy of the pulses from the previous example(Ex6.2)
E=1.657 //Energy of the pulses in Joules
l=0.1 //Cavity length in meter
r=0.8 //Mirror reflectance
c=3*(10**8) //Speed of light in meters per second

tc=l/((1-r)*c) //tc is the cavity lifetime

P=E/tc //P is the pulse power

disp(tc,"The Cavity Lifetime in s is:")
disp(P," The Pulse Power in W is:")
