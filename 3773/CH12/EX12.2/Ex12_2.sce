//Chapter 12: The Cylindrical Antenna and the Moment Method 
//Example 12-12.2
clc;

//Variable Initialization
z_load = 2.083 + 1605*%i    //Conjugate matched load (ohm)
e0 = 1.0                      //Electric field magnitude (unitless)
l = 1/10.0                    //Length of dipole (lambda)
ima = 0+1*%i                 //Imaginary number 

z11_exact = 0.4935 - 3454*%i //Exact impedance vector(ohm)
z11_apprx = 0.4944 - 3426*%i //Approximate impedance vector(ohm)
z12_exact = 0.4935 + 1753*%i  //Exact impedance vector(ohm)
z12_apprx =  0.4945 + 1576*%i //Approximate impedance vector(ohm)
z13_exact = 0.4935 + 129.9*%i //Exact impedance vector(ohm)
z13_apprx =  0.4885 + 132.2*%i //Approximate impedance vector(ohm)

//Calculation
d = l/4     //Length of each segment (lambda)
vm = (2*e0/(2*%pi))*tan(2*%pi*d/2)    //Voltage vector (VA)
z22 = z11_exact + z_load        //Impedance matrix for loaded dipole (VA)
zmat_exact =([z11_exact+z13_exact,z12_exact;2*z12_exact,z22])//Z(impedance) matrix    (unitless)
vmat = ([vm;vm])  //Voltage matrix (unitless)
[i1]= linsolve(zmat_exact,vmat)    //Current matrix (unitless)
i1=i1*-1
i3 = i1(1)         //Current vector (unitless)
e_zn = (60*tan(2*%pi*d/2))*ima      //Free space electric field (V/m)
e_s = i1(1)*e_zn + i1(2)*e_zn + i3*e_zn         //Scattered field (V/m)
sigma = 4*%pi*(abs(e_s)**2)/(abs(e0)**2) //Radar Cross section (lambda**2)

//Result
mprintf("The radar cross section using exact values of Z matrix is %.4f lambda square",sigma(1))
