 
m1= 14.00307; //u
m2= 4.00260; //u
m3= 1.00783; //u
m4= 16.99913; //u
k= m1+m2-m3-m4; // difference in total mass of reactants and products, u
Q= k*931.5; //energy exchanged, MeV
KEcm= -Q; //minimum KE needed in centre of mass system, MeV
KElab= KEcm*(m2+m1)/m1; //minimum KE in laboratory system
disp(KElab,"The minimum KE required by the alpha particle, in MeV, is: ")
 
//Result
// The minimum KE required by the alpha particle, in MeV, is:    
//    1.5451071  