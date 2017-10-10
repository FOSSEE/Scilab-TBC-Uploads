clc
clear
mprintf('Mechanical vibrations by G.K.Grover\n Example 4.11.4\n')
//given data
RF=1800//resonant frequency in rpm
L=0.050//lenght of steel reed in metres
B=0.006//width of steel reed in metres
t=0.00075//thickness of steel reed in metres
E=19.6*10^10//young's modulus in N/(m^2)
//calculations
Wn=2*%pi*RF/60//natural frequency in radians
I=(B*t^3)/12//moment of inertia in (m^4)
m=3*E*I/((Wn^2)*L^3)//required mass
//output
mprintf('The required mass M to be placed at the end of the reeds of Frahm tachometer is %f Kgs',m)
