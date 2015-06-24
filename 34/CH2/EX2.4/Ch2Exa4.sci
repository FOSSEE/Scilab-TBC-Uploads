 
 
//part (a)
l= 10; //wavelength of x-ray, pm
r= 45; //angle of scattered articles, degree
lc= 2.426*(10^(-12)); //Compton wavelength for electron, m
k= cosd(45);
lc= lc* 10^12; // converting to pm

l2= l+ lc*(1-k) //using Eqn 2.23
disp(l2,"The wavelength of scattered x-ray, in pm, is: ")
 
//Result
// The wavelength of scattered x-ray, in pm, is:    
//   10.710559  

 
//Part (b)
 
lmax= l+(lc*2); //for (1-k)=2
disp(lmax,"Maximum wavelength, in pm, is: ")
 
//Result
// Maximum wavelength, in pm, is:    
//    14.852  
 
//Part (c)
h= 6.63*(10^(-34)); //Planck's constant, J.s
c= 3*10^8; //velocity of light, m/s
c=c*10^12; //converting to pm/s
KEmax= (h*c)*((1/l)-(1/lmax)); //J
disp(KEmax,"The maximum KE of recoil electrons, in J, is: ")
 
//Result
// The maximum KE of recoil electrons, in J, is:    
//    6.498D-15  