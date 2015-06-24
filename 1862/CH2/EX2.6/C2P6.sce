
clear
 clc
//to find average velocity for interval AD and DF
//to find slope of position curve at the points B and F and compare it with the value in velocity curve
//to find average acceleration in the interval AD and AF
//to find slope of velocity curve at the points D and compare it with the value in acceleration curve

// GIVEN::

//distance travelling by the point D has come
xD = 5.0//in m
//distance travelling by the point A has come
xA = 1.0//in m
//distance travelling by the point F has come
xF = 1.4//in m
//time elapsed by the point D has come
tD = 2.5//in seconds 
//time elapsed by the point A has come
tA = 0.0//in seconds 
//time elapsed by the point F has come
tF = 4.0//in seconds
//velocity at point D
vD = 0.0//in m/s 
//velocity at point A
vA = 4.0//in m/s 
//velocity at point F
vF = -6.2//in m/s 



// SOLUTION:

//average velocity for the interval AD
//applying kinematic equations
Vav_x = (xD-xA)/(tD-tA)
//average velocity for the interval DF
//applying kinematic equations
Vavx = (xF-xD)/(tF-tD)
//slope of position curve at the point B
slope_B = (4.5-2.8)/(1.5-0.5)//refer to the graph 2.6(b) given in the book on page no. 25
//slope of position curve at the point F
slope_F = (1.4-4.5)/(4.0-3.5)//refer to the graph 2.6(b) given in the book on page no. 25
//average acceleration in the interval AD
//applying kinematic equations
Aav_x = (vD-vA)/(tD-tA)//in m/s^2
//average acceleration in the interval AF
//applying kinematic equations
Aavx = ((vF-vA)/(tF-tA))//in m/s^2
Aavx = nearfloat("pred",-2.6)
//slope of velocity curve at the point D
slope_D = (-0.9-0.9)/(3.0-2.0)//refer to the graph 2.6(c) given in the book on page no. 25

printf ("\n\n Average velocity for the interval AD  Vav_x=\n\n %.1f m/s",Vav_x);
printf ("\n\n Average velocity for the interval DF V_avx =\n\n %.1f m/s",Vavx);
printf ("\n\n Slope of position curve at the point B  slpoe_B=\n\n %.1f m/s",slope_B);
printf ("\n\n Slope of position curve at the point F =\n\n %.1f m/s",slope_F);
//refer velocity time graph 2.6(c) given in the book on the page no.25
printf ("\n\n From velocity curve value of velocity at point B is \n\n 1.7m/s");
printf ("\n\n From velocity curve value of velocity at point Bis \n\n -6.2m/s");
printf ("\n\n Average acceleration for the interval AD Aav_x =\n\n %.1f m/s^2",Aav_x);
printf ("\n\n Average acceleration for the interval AF Aavx =\n\n %.1f m/s^2",Aavx);
printf ("\n\n Slope of velocity curve at the point D slope_D =\n\n %.1f m/s^2",slope_D);
//refer velocity time graph 2.6(d) given in the book on the page no.25
printf ("\n\n From acceleration curve value of acceleration at point D is \n\n -1.8m/s^2");
