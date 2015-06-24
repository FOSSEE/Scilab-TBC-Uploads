clc
//Example 3.9
//calculate how fast the level of water is rising or falling in a cylindrical tank
d=3;//m diameter of tank
a=(%pi)*d^2/4;//m^2
d_in=0.1;//m inner diameter of inflow pipe
d_out=0.2;//m
v_in=2;//m/s
v_out=1;//m/s
q_in=((%pi)*d_in^2/4)*v_in;//m^3/s
q_out=((%pi)*d_out^2/4)*v_out;//m^3/s
//let D represent d/dt
DV=q_in-q_out;//m^3/s
if DV>1 then
  printf("The water level in tank is rising\n");
else if DV<1 then
    printf("The water level in tank is falling\n");
    else
      printf("No accumulation\n");
      end
//let h be the height of water in tank
Dh=DV/a//m/s 
printf("The rate of level of water is rising or falling in a cylindrical tank is %f m/s",Dh);   