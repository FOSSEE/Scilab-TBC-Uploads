
clear
 clc
//to find velocity of carts after collision

// GIVEN::
//we consider +ve x direction as direction of motion of first cart
//refer to figure 6-9 on page no. 123
//mass of first cart
m1 = 0.24//in kg
//initial velocity of first cart
v1i = 0.17//in m/s
//initial velocity of second cart
//as 2nd cart is initially at rest
v2i = 0//in m/s
//mass of second cart
m2 = 0.68//in kg



// SOLUTION:

//refer to figure 6-9 on page no. 123
//using impluse force relationship
//magnitude of impluse i.e. area under graph 6-9 on page 123
J = 0.5*(0.014-0.003)*10//in kgm/s

//assuming direction of motion of first cart is in +ve x direction
//change in momentum in x direction for first cart
delta_p1x = -(J)//in kgm/s
//initial momentum of first cart in x direction
p1ix = m1*v1i//in kgm/s
//final momentum for first cart
p1fx = p1ix + delta_p1x//in kgm/s 
//final velocity of first cart in x direction
v1fx = p1fx/m1//in m/s
v1fx = nearfloat("pred",-0.058)


//as direction of motion of first cart is in +ve x direction for second cart it will be in -ve x direction
//using newton's third law of motion 
//change in momentum in x direction for second cart
delta_p2x = (J)//in kgm/s
//initial momentum of second cart in x direction
p2ix = m2*v2i//in kgm/s
//final momentum for second cart
p2fx = p2ix + delta_p2x//in kgm/s 
//final velocity of second cart in x direction
v2fx = p2fx/m2//in m/s
printf ("\n\n Magnitude of impluse J = \n\n %.3f Kg.m/s",J);
printf ("\n\n Change in momentum in x direction for first cart delta_p1x  = \n\n %.3f Kg.m/s",delta_p1x);
printf ("\n\n Final momentum for first cart p1fx = \n\n %.3f Kg.m/s",p1fx);
printf ("\n\n Final velocity of first cart in x direction v1fx = \n\n %.3f m/s",v1fx);
printf ("\n\n Final momentum for second cart p2fx = \n\n %.3f Kg.m/s",p2fx);
printf ("\n\n Final velocity of second cart in x direction v2fx = \n\n %.3f m/s",v2fx);
