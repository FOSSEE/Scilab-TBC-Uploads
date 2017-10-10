//Example 2.1, Page Number 51
//Conductivity Calculation
clc;

dc=8.93*(10**3) //Density of Copper in Kg/meter cube
N=63.54 //Atomic Mass Number of Copper in amu
t=2.6*(10**-14)//Mean free time between collision (in seconds)
m=9.1*(10**-31) //Mass of electron in kilogram
em=0.135 //Electron Mobility in meter square per volt second
hm=0.048 //Hole Mobility in meter square per volt second
n=1.6*(10**16) //Concentration per meter cube
an=6*(10**26)  //Avogadro's number per mole
e=1.6*(10**-19)  //Charge of an electron in Coulombs

n1=(an*dc)/N //Free electron concentration/No. of atoms per unit volume

rhoc=(n1*e*em)/3 //Conductivity of Copper in per ohm m

//From equation 2.24
rhos=n*e*(em+hm) //Conductivity of Copperintrinsic silicon in per ohm m


mprintf("Free Electron Concentration is: %.2e per meter cube\n",n1);
mprintf(" Conductivity of copper is:%.2e per ohm meter\n",rhoc)//The answer provided for rhoc in the textbook is wrong
mprintf(" Conductivity of intrinsic silicon is:%.2e  per ohm meter\n",rhos)
