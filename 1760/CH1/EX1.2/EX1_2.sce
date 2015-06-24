                      //EXAMPLE 1-2   PG NO 18
R=0.69;               //RESISTANCE
P=2.83*10^-8;              //PRO
L=60;             //LENGTH OF CABLE
a=(P*L)/R;
disp('i) a = '+string (a)+' m^2');  
D=[(4*a)/%pi]^0.5;               //DIAMETER
disp('i) DIAMETER = '+string (D)+' mm');          
