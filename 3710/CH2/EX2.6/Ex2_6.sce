//Example 2.6, Page Number 73
//Saturation Current Density
clc;
nd=10**21 //Donor Concentration per meter cube
na=10**22 //Acceptor Concentration per meter cube
de=3.4*(10**-3) //Drift current-electron in meter square per second
dh=1.2*(10**-3) //Drift current-holes in meter square per second
le=7.1*(10**-4) //in meter
lh=3.5*(10**-4) //in meter
n=1.6*(10**16)  //per meter cube
e=1.6*(10**-19)  //charge of an electron in coulomb
A=10**6 //Junction area per unit area

//Assuming all ions are ionized
ni=2.56*(10**32)//per metre cube
pn=(ni)/nd
np=pn/10

//From Equation 2.51a
jo=e*((dh/lh)*pn+(de/le)*np) //Jo is the saturation current density

io=jo/A //io is the reverse bias saturation current

mprintf("P-N concentration is:%.2e per meter cube\n",pn) 
mprintf("N-P concentration is:%.2e per meter cube\n",np)
mprintf("The Saturation Current Density is:%.1e A/meter square\n",jo)
mprintf("The Reverse Bias Saturation Current is:%.1e A\n",io)
