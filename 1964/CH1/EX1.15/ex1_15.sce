//Chapter-1, Example 1.15, Page 26
//=============================================================================
clc;
clear;
//INPUT DATA
I=20;//current in A
V=8;//supply voltage in V
t=3600;//1hr=3600sec
m=1000;//mass in kg(1 tonne= 1000 kg)
//kinetic energy = energy dissipated in the resistance----eqn(1)
//CALCULATIONS 
E=V*I*t;// energy dissipated in resistance in joules
v=sqrt(E/(0.5*m));//kinetic energy possesed by body(K=0.5*m*v*v) and using eqn(1),we found out velocity in m/sec
//OUTPUT
mprintf("Thus the velocity is %2.2f m/sec",v);
 

//=================================END OF PROGRAM==============================
