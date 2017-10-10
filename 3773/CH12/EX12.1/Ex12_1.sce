//Chapter 12: The Cylindrical Antenna and the Moment Method 
//Example 12-12.1
clc;

//Variable Initialization
N = 3        //Piecewise sinusoidal dipole modes (unitless)
l = 1/10.0     //Dipole length (lambda)
z11_exact = 0.4935 - 3454*%i //Exact impedance vector(ohm)
z11_apprx = 0.4944 - 3426*%i //Approximate impedance vector(ohm)
z12_exact = 0.4935 + 1753*%i  //Exact impedance vector(ohm)
z12_apprx =  0.4945 + 1576*%i //Approximate impedance vector(ohm)
z13_exact = 0.4935 + 129.9*%i //Exact impedance vector(ohm)
z13_apprx =  0.4885 + 132.2*%i //Approximate impedance vector(ohm)

//Calculations
N2 = N + 1  //Number of equal segments (unitless)
d = l/4     //Length of each segment (lambda)
Rmn = 20*(2*%pi*d)**2   //Real part of elements of Z-matrix, Zmn (VA)
zmat_apprx=([z11_apprx+z13_apprx,z12_apprx;2*z12_apprx,z11_apprx])//matrix(unitless)
vmat = ([0;1])  //Voltage matrix (unitless)
[i1]=linsolve(zmat_apprx,vmat)    //Current matrix (unitless)
i1=i1*-1
i_ratio = i1(2)/i1(1)         //Current ratio  (unitless)
zin = vmat(2)/i1(2)        //Input impedance (ohm)


zmat_exact =([z11_exact+z13_exact,z12_exact;2*z12_exact,z11_exact])
[i1_e] = linsolve(zmat_exact,vmat)    //Current matrix (unitless)
i1_e=i1_e*-1
i_ratio_exact = i1_e(2)/i1_e(1)         //Current ratio  (unitless)
zin_exact = vmat(2)/i1_e(2)        //Input impedance (ohm)


//Result
mprintf("The current ratio is %.2f+%.4f j",real(i_ratio),imag(i_ratio))
mprintf("\nThis is nearly equal to 1.9 indicating a nearly triangular current distribution")
mprintf("\nThe input impedance is %.3f%.3fj ohm using approximate values", real(zin),imag(zin))
mprintf("\nThe input impedance is %.3f%.3fj ohm using exact values", real(zin_exact),imag(zin_exact))
