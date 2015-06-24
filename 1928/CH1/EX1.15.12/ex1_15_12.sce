//Chapter-1,Example1_15_12,pg 1-74

a=2.814*10^-10                          //lattice constant

//for rock salt

d=a/2                                   //interplaner spacing

n=1                                     //first order maximum

l=1.541*10^-10                          //wavelength of rock salt crystal

//using Bragg's law

m=asin((n*l)/(2*d))                     //glancing angle

Q=m*180/%pi

printf("glancing angle=")

disp(Q)

printf("degree")
