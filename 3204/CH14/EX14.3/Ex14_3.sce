// Initilization of variables
a_T=0.18 // m/s^2 // acc of trolley
// Calculations
a_B=-a_T/3 // m/s^2 // from eq'n 4
t=4 // seconds
v_T=a_T*t // m/s // velocity of trolley after 4 seconds
v_B=-v_T/3 // m/s // from eq'n 3
S_T=(1/2)*a_T*t^2 // m // distance moved by trolley in 4 sec
S_B=-S_T/3 // m // from eq'n 2
// Results
clc
printf('The acceleration of block B is %f m/s^2 \n',a_B)
printf('The velocity of trolley & the block after 4 sec is %f m/s & %f m/s \n',v_T,v_B)
printf('The distance moved by the trolley & the block is %f m & %f m \n',S_T,S_B)
// The -ve sign indicates that the velocity or the distance travelled is in opposite direction.
