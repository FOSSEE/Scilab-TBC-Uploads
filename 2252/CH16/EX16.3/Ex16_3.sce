
mu_not=4D-7*%pi
i=120/6  //current flowing in coil
N=300  //no. of turns
x=.005  //length of air gap
Ag=36D-4  //cross-sectional area at gap
//calculating stored field energy
W_f=mu_not*N^2*Ag*i^2/(4*x)
mprintf("Stored field energy=%f watt-sec\n", W_f)
//calculating mechanical force developed
F_f=mu_not*N^2*i^2*Ag/(4*x^2)
mprintf("Mechanical force developed=%f N-m", F_f)
