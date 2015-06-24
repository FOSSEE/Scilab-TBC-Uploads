//Chapter-4, Example 4.6, Page 134
//=============================================================================
clc
clear
//INPUT DATA
N=200;//no of turns
a=250;//area of cross-section in sq.cm
Bm=0.5;//magnetic field strength in Tesla
speed=1200;//in r.p.m
//CALCULATIONS
w=2*%pi*(speed/60);//angular freq in rad/sec
phi=Bm*a*10^-4;//area taken in sq.m
Em=N*w*phi;//maximum value of induced Emf
mprintf("maximum value of induced Emf is %d volts\n",Em);
//equation for instantaneous induced emf is e=Em*sin(w*t)
//when  plane of coil is parallel to field ,theta is 90 degrees
e1=Em*sin(%pi/2);//converted degrees to radians
mprintf("when  plane of coil is parallel to field, induced Emf is %d volts\n",e1);
//when plane of coil is parallel to field ,theta is 0 degrees
e2=Em*sin(0);
mprintf("when  plane of coil is perpendicular to field, induced Emf is %d volts\n",e2);
//when plane of coli is inclined at 45 degrees to the field
e3=Em*sin(%pi/4);
mprintf("when  plane of coil is at 45 degrees to field, induced Emf is %d volts\n",e3);
//=================================END OF PROGRAM==============================
