//Chapter-1,Example1_15_11,pg 1-74

n=1                                     //first order minimum

d=5.5*10^-11                            //atomic spacing

e=1.6*10^-19                            //charge on one electron

Ee=10*10^3                              //energy in eV

E=e*Ee                                  //energy in Joule

m=9.1*10^-31                            //mass of elelctron

h=6.63*10^-34                           //plank's constant

l=h/sqrt(2*m*E)                         //wavelength

//using Bragg's law

Q=asind((n*l)/(2*d))                     //glancing angle

printf("glancing angle=")

disp(Q)

printf("degree")

