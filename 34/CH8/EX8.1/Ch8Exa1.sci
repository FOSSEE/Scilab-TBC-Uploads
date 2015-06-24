 
//Part (a)
r= 0.113; //bond length, nm
Mc= 1.99*(10^(-26)); //mass of C12, kg
Mo= 2.66*(10^(-26)); //mass of O16, kg
Mco= (Mc*Mo)/(Mc+Mo); //mass of CO, kg
I= Mco*((r*(10^(-9)))^2); //moment of inertia, kg.m^2
J=1; //lowest rotational state
h= 6.63*(10^(-34)); //Planck's constant, J.s
hbar= h/(2*(%pi)); //reduced Planck's constant, J.s
E1= (J*(J+1)*(hbar^2))/(2*I); //energy corresponding to state J=1, J
e= 1.6*(10^(-19)); //charge of an electron, C
E1= E1/e; //converting to eV
disp(E1,"The energy of CO molecule, in eV, is: ")

//Result
// The energy of CO molecule, in eV, is:    
//    0.0004787  
 
//Part(b)
w= sqrt((2*E1*e)/(I)); //angular velocity, rad/s
disp(w,"The angular velocity, in rad.sec, is: ")

//Result
// The angular velocity, in rad.sec, is:    
//    1.027D+12