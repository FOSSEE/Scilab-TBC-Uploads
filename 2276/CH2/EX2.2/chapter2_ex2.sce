clc
clear

//input
l=0.5; //length of an air cored cylinder in meters
d1=0.05; // diameter of an air cored cylinder in meters
n=400; //number of turns of copper wire wound around the cylinder
d2=0.001; //diameter of the copper wire wound in meters
v=14; //dc supply voltage in volts
r=1.71*(10^-8);// resistivity of copper in ohm meteres
u0=1.257*(10^-6); // permeabilty of free space
ur=1; //relative permeability

//calculations
L=(u0*ur*(n^2)*(%pi*(d1^2)))/(4*l); //inductance of the coil in henry
R=(r*n*(d1+d2)*%pi*4)/(%pi*(d2^2)); // resistance of the field in ohm
i=v/R; //current in the field in amperes
e=(L*(i^2))/2; // energy stored in the field in joules

//output
mprintf('the inductanec of the coil is %3.10f H \n the resistance of the field is %3.10f ohm \n the energy stored in the field is %3.10f J',L,R,e)
