//Example 3.4 // Thickness of half wave plate
clc;
//given data :
Uo=1.54;//Refractive index for Ordinary light
r=1.007;//ratio of velocity of ordinary to extraordinary
Ue=r*Uo;//refractive index for extraordinary light
w=5893D-10;// wavelength of light used in m
t=w/(2*(Uo-Ue));// thickness of half wave plate in m
t=abs(t);// thickness always positive
disp(t,"Thickness of half wave plate in m")
