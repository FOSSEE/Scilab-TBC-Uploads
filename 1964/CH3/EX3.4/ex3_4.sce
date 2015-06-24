//Chapter-3, Example 3.4, Page 110
//=============================================================================
clc
clear

//INPUT DATA
l=0.3;//mean length of toroidal coil in meters (30cm=0.3m)
N=480;//no of turns of coil
a=5*10^-4;//cross sectional area in metres (1 cm^2=10^-4 m^2)
I=4;//current in amps
dt=60*10^-3;//time in sec
u0=4*%pi*10^-7;//permeability in free space in henry/m
ur=1;//relative permeability for air
//CALCULATIONS
L=(u0*ur*a*N*N)/(l);//inductance of coli in henry
di=I-(-I);//change in current in amps
E=L*(di/dt);//average induced emf
//OUTPUT
mprintf('The inductance of the coil is %1.6f H \n',L)
mprintf('average induced emf is %1.3f V \n',E)

//=================================END OF PROGRAM==============================
