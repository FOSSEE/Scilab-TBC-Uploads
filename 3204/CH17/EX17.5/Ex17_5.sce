// Initilization of variables
M=250 // kg // mass of the boat
M_1=50 // kg // mass of the man
M_2=75 // kg // mass of the man
v=4 // m/s // relative velocity of man w.r.t boat
// Calculations 
// (a)
// Let the increase in the velocity or the final velocity of the boat when TWO MEN DIVE SIMULTANEOUSLY is given by eq'n,
deltaV_1=((M_1+M_2)*v)/(M+(M_1+M_2)) // m/s
// (b) // The increase in the velocity or the final velocity of the boat when man of 75 kg dives 1st followed by man of 50 kg
// Man of 75 kg dives first, So let the final velocity is given as
deltaV_75=(M_2*v)/((M+M_1)+M_2) // m/s
// Now let the man of 50 kg jumps  next, Here
deltaV_50=(M_1*v)/(M+M_1) // m/s
// Let final velocity of boat is,
deltaV_2=0+deltaV_75+deltaV_50 // m/s
// (c) 
// The man of 50 kg jumps first,
delV_50=(M_1*v)/((M+M_2)+(M_1)) // m/s
// the man of 75 kg jumps next,
delV_75=(M_2*v)/(M+M_2) // m/s
// Final velocity of boat is,
deltaV_3=0+delV_50+delV_75 // m/s
// Results
clc
printf('(a) The Final velocity of boat when two men dive simultaneously is %f m/s \n',deltaV_1)
printf('(b) The Final velocity of boat when the man of 75 kg dives first and 50 kg dives second is %f m/s \n',deltaV_2)
printf('(3) The Final velocity of boat when the man of 50kg dives first followed by the man of 75 kg is %f m/s \n',deltaV_3)
