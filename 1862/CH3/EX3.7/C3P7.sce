

 clc
//to find net force on passenger ang scale reading while descending and ascending

// GIVEN::
 //refer to figure 3-19(a) and3-19(b) from page no. 56
//mass of passenger
m = 72.2 // in Kg
//acceleration of elevator while descending
a0y = 0// in m/s^2
// acceleration of elevator while ascending
ay = 3.20//in m/s^2
//acceleration due to gravity
g = 9.81//in m/s^2

// SOLUTION:

//passenger while descending
//applying newton's second law
Fps_d = m*(g+a0y)//in m/s^2 
Fps_d1 = Fps_d/(g*.4535)//in lb
//passenger while ascending
//applying newton's second law
Fps_a = m*(g+ay)//in m/s^2 
Fps_a1 = Fps_a/(g*.4535)//in lb
printf ("\n\n Net force on passenger while descending Fps_d = \n\n %3i N" ,Fps_d);
printf ("\n\n Net force on passenger while descending Fps_d1 = \n\n %3i lb" ,Fps_d1);
printf ("\n\n Net force on passenger while ascending Fps_a = \n\n %3i N" ,Fps_a);
printf ("\n\n Net force on passenger while ascending Fps_a1 = \n\n %3i lb" ,Fps_a1);
printf ("\n\n Scale raeding will not change while descending due to constant acceleration whilescale reading will increase while ascending due to increase in acceleration");
