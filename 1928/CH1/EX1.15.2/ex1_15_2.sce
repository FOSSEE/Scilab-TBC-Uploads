//Chapter-1,Example1_15_2,pg 1-69

a=2.125*10^-10                          //lattice constant

d=a/2                                   //interplaner spacing

n=2                                     //second order maximum

l=0.592*10^-10                          //wavelength of rock salt crystal

//using Bragg's law

m=asin((n*l)/(2*d))                     //glancing angle

Q=m*180/%pi

printf("glancing angle=")

disp(Q)

printf("degree")

