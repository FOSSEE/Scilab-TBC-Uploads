

clear
 clc
 
//To find force acting on crate

 //Given :
 //refer to figure 3-17(a) and3-17(b) from page no. 55
 // mass of first crate
 m1 =4.2 //kg
 // mass of second crate
 m2 =1.4 //kg
 // force on first crate
 P1w =3 //in N

//solution://for two crate remain in contact acc(crate 1)=acc(crate 2). we will call this as common acelration as a.
// calculating common acceleration of both crate in m/s^2
//applying newton's secong law
 a =P1w/(m1+m2) //m/s
// calculating force exerted on crate 2 by 1
//applying newton's secong law
 f21 =m2*a //  m/s^2
 f21 = nearfloat("succ",0.76)
 
printf ("\n\n Calculating common acceleration of both crate a = \n\n %.2fm/s^2" ,a)
printf ("\n\n Force acting on crate f21 = \n\n %.2f N" ,f21);
