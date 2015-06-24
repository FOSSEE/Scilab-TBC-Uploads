// Initilization of variables
m_m=70 // kg // mass of man
m_c=35 // kg // mass of canoe
m=25/1000 // kg // mass of bullet
m_wb=2.25 // kg // mass of wodden block
V_b=5 // m/s // velocity of block
// Calculations
// Considering Initial Momentum of bullet=Final momentum of bullet & the block we have,Velocity of  bullet (v) is given by eq'n,
v=(V_b*(m_wb+m))/(m) // m/s 
// Considering, Momentum of the bullet=Momentum of the canoe & the man,the velocity on canoe is given by eq'n
V=(m*v)/(m_m+m_c) // m/s
// Results
clc
printf('The velocity of the canoe is %f m/s \n',V)
