//Chapter 12: The Cylindrical Antenna and the Moment Method 
//Example 12-12.3
clc;

//Variable Initialization
z11_exact = 2-1921*%i         //Exact impedance vector (ohm)
z12_exact = 1.9971-325.1*%i   //Exact impedance vector (ohm)

z11_apprx = 1.9739-1992*%i    //Approximate impedance vector (ohm)
z12_apprx = 1.9739-232.8*%i   //Approximate impedance vector (ohm)

vmat =([1;0])

//Calculations
zmat_exact =([z11_apprx,z12_apprx;z12_apprx, z11_apprx])         //Impedance matrix (unitless)
[i1] = linsolve(zmat_exact,vmat)      //Current matrix (unitless)
i1=i1*-1
zin = 1/i1(1)

//Result
mprintf("The input impedance for order N = 2 is %.3f%.3fi ohm",real(zin),imag(zin))
