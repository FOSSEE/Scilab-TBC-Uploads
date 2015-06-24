clear
clc
//to find rate of heat energy pass through the insulation
//to find additional insulation required to reduce heat transfer rate by half

//Given:
//refer to figure 23-6 from page no. 520
////temperature of steam
TS = 100//in degree celsius
//diameter of pipe
d = 5.4//in cm
//thickness of insulation
t = 5.2//in cm
//length of pipe
D = 6.2//in meters
//temperature of room
TR = 11//in degree celsius
//thermal conductivity
k = 0.048//in W/m.K

//Solution:
//radius of cylinder
r1 = d/2//in cm
//radius of cylinder with insulation
r2 = r1+t//in cm
//applying fourier's law of heat conduction
//rate of heat energy pass through the insulation
H = (2*%pi*k*D*(TS-TR))/(log(r2/r1))//in W
//additional insulation required to reduce heat transfer rate by half
r2_dash = (r2^2)/r1//in cm

printf ("\n\n Rate of heat energy pass through the insulation H = \n\n %3i W" ,H);
printf ("\n\n Additional insulation required to reduce heat transfer rate by half r2_dash = \n\n %2i cm" ,r2_dash);
