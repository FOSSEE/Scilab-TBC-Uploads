clear
//
o=45.0*3.14/180.0       //angle of inclination 
u=0.5                        //coefficient of friction
r=1.5                    //ratio of mans weight to ladders weight
o1=45.0*%pi/180.0           //angle of inclination
//from law of friction
//Fa = μNa
//Fb = μNb
//Fa – Nb = 0 
//Na + Fb = W + r W
//ΣMA = 0
o=(((u*u+u)*(1+r)/((1+u)))-1.0/2.0)/r
printf("\n length will %0.3f  times",o)
