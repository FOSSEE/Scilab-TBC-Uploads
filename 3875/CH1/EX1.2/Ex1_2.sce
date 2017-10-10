clc ;
clear ;
K=10 //Spring constant in N/m
m=0.1 //Mass in kg

//calculation
// for (a)
damp_omega=-1/-100
c=m*2*damp_omega

//for (b)
omega_n=sqrt(K/m)

//for (c)
damping_ratio=damp_omega/omega_n
Q=1/(2*damping_ratio)
omega_d=omega_n*sqrt(1-damping_ratio^2) //in radian/s

//for (d)
fract_change=0.5*(damping_ratio^2) //fractional change in frequency
percent_change=fract_change*(10^2)

mprintf("\n(a)\n")
mprintf("Resistive force constant c = %.0e newton/s/meter\n",c)
mprintf("(b)\n")
mprintf("Natural angular frequency omega_n = %d rad/s\n",omega_n)
mprintf("(c)\n")
mprintf("Damping ratio damping_ratio = %.0e\n",damping_ratio)
mprintf("Q factor = %d\n",Q)
mprintf("(d)\n")
mprintf("percent change in frequency = %.0e\n",percent_change)

