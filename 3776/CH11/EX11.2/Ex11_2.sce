clear
//Given 
//
h =  60             //mm - the length of the crossection 
b = 100             //mm - the width of hte crossection 
E = 200             //Gpa - The youngs modulus
stress_cr  = 250    //MPa - The proportionality limit
//Caliculations 

I = b*(h**3)/12     //mm3 The momentof inertia of the crossection
A = h*b             //mm2 - The area of teh crossection 
//From Eulier formula
r_min  =  ((I/A)**0.5)                            //mm - The radius of the gyration 
//(l/r)**2= (%pi**2)*E/stress_cr                      //From Eulier formula
l = (((%pi**2)*E*(10**3)/stress_cr)**0.5)*r_min //mm - the length after which the beam starts buckling
printf("\n The length after which the beam starts buckling is  %0.0f mm",l)
