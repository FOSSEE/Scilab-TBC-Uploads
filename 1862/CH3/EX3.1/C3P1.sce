
 clc
 
 //To Find the final velocity of sled
 
 //Given :
 //refer to figure 3-7(a) and3-7(b) from page no. 49
 //mass of sled
 m =240//in kg
 //distance travelled
 d =2.3//in m
 //force applied
 Fsw =130//in N
 
//solution:

//calculating first acceleration
//applying newton's second law
ax =Fsw/m //m/ s ^2
//calculating time required to move sled by distance d
//applying kinemtic equation
t =((2*d)/ax)^(1/2) //in seconds
// calculating velocity
//applying kinemtic equation
vx =ax*t //m/ s
printf ("\n\n Acceleration ax = \n\n %.2fm/s^2" ,ax)
printf ("\n\n final velocity vx = \n\n %.1f m/s" ,vx);
