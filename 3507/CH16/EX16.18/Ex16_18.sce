//chapter16
//example16.18
//page358

Re=5d3 // ohm
Rl=5d3 // ohm
re_dash=29.1 // in ohm, from example 16_17

Re_dash=Re*Rl/(Re+Rl)
Av=Re_dash/(re_dash+Re_dash)

printf("voltage gain = %.3f \n",Av)
