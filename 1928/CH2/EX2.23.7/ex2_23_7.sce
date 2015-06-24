//Chapter-2,Example2_23_7,pg 2-55

B=0.2                                   //magnetic field

e=1.6*10^-19                            //charge on electron

ue=0.39                                 //mobility of electron

l=0.01                                  //length

A=0.001*0.001                           //cross section area of bar

V=1*10^-3                               //Applied voltage

d=0.001                                 //sample of width 

r=1/(ue*e)                              //resistivity

R=r*l/A                                 //resistance of Ge bar

//using ohm's law

I=V/R

Rh=r*ue                                 //hall coefficient

//using formulae for hall effect

J=I/A                                   //current density

Vh=Rh*B*J*d

printf("Hall voltage =")

disp(Vh)
