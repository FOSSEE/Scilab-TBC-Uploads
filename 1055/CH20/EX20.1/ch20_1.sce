//Determine the load taken by the set C and indicate the direction in which the energy is flowing
clear 
clc;
//let x MW flows from A to B
//Load on station A=75+x
//%drop in speed =5*(75+x)/200
//load on station B =(30-x)
//%drp in speed=(30-x)*4/75
x=(1.6-1.875)/(.025+.12+.0533);//by manipulating equation : 5*(75+x)/200 + 3*x/25 =(30-x)*4/75 
mprintf("x=%.2f MW\n",x);
mprintf("which means power of magnitude %.2f MW will be from B to A",abs(x));
