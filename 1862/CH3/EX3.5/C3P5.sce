


clear
 clc
 
//To find force acting on crate

 //Given :
  //refer to figure 3-18(a) and3-18(b) from page no. 55
 // mass of flat-bed cart
 mc =360 //kg
 // mass of box
 mb =150 //kg
 // magnitude of acceleration for cart
 ac =0.167 // m/s^2
  // magnitude of acceleration for box
 ab =1 // m/s^2


//solution:
//force on cart
//applying newton's second law
Fcb =mc*ac //in N
// force on box
//applying newton's second law
Fbw =Fcb+(mb*ab)// in N

printf ("\n\n Force acting on crate Fcb = \n\n %2i N" ,Fcb);
printf ("\n\n Force acting on box Fbw = \n\n %2i N" ,Fbw);
 
 

