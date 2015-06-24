//Chapter-6,Example6_1_2,pg 6-7

m=9.1*10^-31                                     //mass of an electron in kg

v=3*10^7                                         //velocity of an electron

B=0.23                                           //strength of uniform magnetic field

e=1.6*10^-19                                     //charge of an electron 

angle=45                                         //angle between velocity vector and field direction

r=m*v*sind(angle)/(B*e)*10^3                //radius of revolution

printf("\nradius of revolution  r = %.3f mm\n",r)

l=v*cosd(angle)*2*%pi*m/(B*e)*10^3          //pitch f helical path

printf("pitch of helical path  l = %.1f mm\n",l)
