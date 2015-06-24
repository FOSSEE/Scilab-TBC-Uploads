//Variable declaration
n=10**23        //number of electrons(n/m^3)
e=1.6*10**-19   //electronic charge(C) 
u=0.4           //mobility(m^2/Vs)           
a=10**-7        //cross sectional area(m^2) 
l=15*10**-2     //conductor length(m)

//Calculations
//Part a
G=n*e*u         //conductivity(S/m)

//Part b
R=l/(a*G)       //resistance(ohm)

//Results
printf ("conductivity of the conductor is %.1e S/m",G)
printf ("resistance of the conductor is %.1f ohm",R)
