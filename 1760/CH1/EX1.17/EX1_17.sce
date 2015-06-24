                           //EXAMPLE 1-17           PG NO-23
N=10^3;               //Number of Turns
a=6.25*10^-4;                 //Diameter
l=0.25; 
L=(N*N*4*%pi*10^-7*a)/(%pi*l);             //INDUCTANCE
disp('i)inductance = '+string (L)+' H');
e=L*100;                            //EMF
disp('ii)EMF = '+string (e)+' V')
