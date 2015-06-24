//scilab 5.4.1
//Windows 7 operating system
//chapter 23 Lasers,Fibre Optics,and Holography
clc
clear
//To obtain interference fringes of good visibility the path difference for the central fringe must be an integral multiple of each of the 2 wavelengths.
//2*d=(n1*y1)=(n2*y2)where y1 & y2 are 2 wave-lengths and d=path difference and n1 and n2 are 2 integers
//(2*d)*((1/y2)-(1/y1))=(n2-n1)=m where m is another integer
//Now m=(-2*d*Y)/(y^2)=(2*d*V)/(v*y)=(2*d*V)/c=(2*d)/Lc
Lc=600//Lc=coherence length in km
d=(Lc/2)//d=minimum difference between the 2 arms of the Michelson interferometer
disp("km",d,"The minimum difference between the two arms of the Michelson interferometer is=")

