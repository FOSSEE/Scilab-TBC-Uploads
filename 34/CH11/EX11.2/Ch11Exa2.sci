
r= 2.4; //distance between centre of the protons, fm
r= r*(10^(-15)); //converting to m
e= 1.6*(10^(-19)); //charge of an electron, C
Po= 8.85*(10^(-12)); //Permittivity of free space, F/m
K=1/(4*(%pi)*Po); //constant, N.m^2/C^2
F= K*(e^2)/(r^2); //N
disp(F,"The repulsive force, in N, is: ")
 
//Result
// The repulsive force, in N, is:    
//    39.963576 