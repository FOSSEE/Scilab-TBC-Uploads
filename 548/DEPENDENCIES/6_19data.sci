//for the cessna skylane(CP-1):
W=11494.35;//fuel empty weight(N)
W1=3916//total weight(N) including pilot seat etc
Wf=1633.15;//weight(N) of fuel
Wo=W+Wf-W1 //gross weight of UAV
b=10.912;//wingspan(meter)
S=16.16;//wingarea(m^2)
AR=b^2/S//aspect ratio
D=1.225;//density at sea level(Kg/m^3)
Cdo=0.025;//parasite drag coefficient
e=0.8;//oswald efficiency factor
Pa=0.8*230*746 //maximum power available(J/s) from example 6.4
//from example 6.12:
n=0.8;
c=7.45*10^-7;
