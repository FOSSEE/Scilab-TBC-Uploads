// Initilization of variables
m_m=50 // kg // mass of man
m_b=250 // kg // mass of boat
s=5 // m // length of the boat
v_r=1 // m/s // here v_r=v_(m/b)= relative velocity of man with respect to boat
// Calculations
// Velocity of man is given by, v_m=(-v_r)+v_b
// Final momentum of the man and the boat=m_m*v_m+m_b*v_b. From this eq'n v_b is given as
v_b=(m_m*v_r)/(m_m+m_b) // m/s // this is the absolute velocity of the boat
// Time taken by man to move to the other end of the boat is,
t=s/v_r // seconds
// The distance travelled by the boat in the same time is,
s_b=v_b*t // m to right from O
// Results
clc
printf('(a) The velocity of boat as observed from the ground is %f m/s \n',v_b)
printf('(b) The distance by which the boat gets shifted is %f m \n',s_b)
