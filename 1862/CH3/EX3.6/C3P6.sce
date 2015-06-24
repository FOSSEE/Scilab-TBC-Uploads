


clear
 clc
 
 //To find frictional force of the box on the cart
// referrinf to same problem as 3-5 on page no.55

 //Given :
 // mass of flat-bed cart
 mc =360 //kg
 // mass of box
 mb =150 //kg
 // magnitude of acceleration for cart
 ac =0.167 // m/s^2
  // magnitude of acceleration for box
 ab =1 // m/s^2


//solution:
// force on cart
//applying newton's second law
 Fcb =mc*ac //in N
// force on box
//applying newton's second law
Fbw =Fcb+(mb*ab)// in N
//frictional force
//applying newton's second law
Fcb =(mc*Fbw)/(mc+mb)// in N
Fcb = nearfloat("succ",150)
//answer of Fcb slightli varies.but answer by scilab is same as on calculator
printf ("\n\n Frictional force  of box on the cart fcb = \n\n %3iN" ,Fcb);
