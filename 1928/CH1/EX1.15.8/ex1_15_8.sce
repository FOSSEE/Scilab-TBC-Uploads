//Chapter-1,Example1_15_8,pg 1-72

a=2.814*10^-10                          //lattice constant

//the interplanar spacing of plane

h=1

k=0

l=0

d=a/sqrt(h^2+k^2+l^2)

n=2                                     //first order maximum

l=0.714*10^-10                          //wavelength of X-ray crystal

//using Bragg's law

m=asin((n*l)/(2*d))                     //glancing angle

Q=m*180/%pi

printf("glancing angle=")

disp(Q)

printf("degree")
