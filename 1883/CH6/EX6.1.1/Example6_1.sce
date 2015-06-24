//Chapter-6,Example6_1_1,pg 6-6

m=9.1*10^-31                                     //mass of an electron in kg

v=2.5*10^6                                       //velocity of an electron

B=0.94*10^-4                                     //strength of uniform magnetic field

e=1.6*10^-19                                     //charge of an electron 

angle=30                                           //angle between velocity vector and field direction

r=m*v*sind(angle)/(B*e)*10^3                //radius of revolution

printf("\nradius of revolution  r = %.2f mm \n",r)

l=5*v*cosd(angle)*2*%pi*m/(B*e)             //distance coverd in five revolutions

printf("distance coverd in five revolutions  5l =%.3f m",l)

