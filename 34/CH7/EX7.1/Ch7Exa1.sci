 
r= 5*(10^(-17)); //radius of spherical electron, m
Me= 9.1*(10^(-31)); //mass of electron, kg
h= 6.63*(10^(-34)); //Planck's constant, J.s
hbar= h/(2*(%pi)); //reduced Planck's constant, J.s
v= (5*sqrt(3)/4)*(hbar/(Me*r)); //using Eqn 7.1, Page 230
c= 3*(10^8); //velocity of light, m/s
v= v/c; //converting in terms of c, m/s
disp(v,"The velocity of electron in times of c, in m/s, is: ")
 
//Result
// The velocity of electron in times of c, in m/s, is:    
//    16736.77 