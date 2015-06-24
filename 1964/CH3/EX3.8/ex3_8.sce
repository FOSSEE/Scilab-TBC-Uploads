//Chapter-3, Example 3.8, Page 112
//=============================================================================
clc
clear
//INPUT DATA
N=1000;//no of turns in a coil
a=10*10^-4;//crossectional area in m^2
i1=4.2;//current in A in case 1
i2=9.2;//current in A in case 2
B1=1;//flux density in wb/m^2 when current is i1
B2=1.42;//flux density in wb/m^2 when current is
dt=0.05;//time in sec where current reduces from 9.2A to 4.2A
//CALCULATIONS
db=(B2-B1)//difference in flux densities
di=(i2-i1);//difference in currents
di1=(i1-i2);//difference in currents
L=N*a*(db)/di;//average inductance between the limits in H
E=-(L*di1/dt);//emf induced 
//OUTPUT
mprintf("Thus the average inductance between the limits is %1.3f H \n",L);
mprintf("emf induced is %1.1f volts\n",E);

//=================================END OF PROGRAM==============================


