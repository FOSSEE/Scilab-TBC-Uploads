//Chapter-3,Example3_17_11,pg 3-39

phi=5.9*10^-3                           //magnetic flux

ur=900                                  //relative permeability of material

n=700                                   //number of turns

u0=4*%pi*10^-7                          //permeability of free space

A=60*10^-4                              //cross section area of ring

l=2                                     //mean circumference of ring

B=phi/A                                 //flux density

H=B/(u0*ur)                             //magnetic field

At=H*l                                  //Amp-turns required

I=At/n                                  //current required

printf("Current required to produce a flux=")

disp(I)

printf("Amp")



