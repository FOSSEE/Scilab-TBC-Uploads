clc;
//Example 7.5
//page no 67
printf("Example 7.5 page no 67\n\n")
//water flow in tank inletand outlet pipes
//applying continuity principle to the control volume
//since generation rate =0
d1=0.09//diameter of inlet pipe
v_in=4//velocity,m/s
v_out=3//velocity,m/s
q_in=(%pi*d1^2)*v_in/4//volumatric flow rate at inlet 
d2=0.04//diameter of outlet pipe
q_out=(%pi*d2^2)*v_out/4
printf("\n diameter at inlet d1=%f m\n volumatric flow rate at inlet q_in=%f m^3/s\n diameter d2=%f m\n volumatric flow rate at outlet q_out=%f m^3/s",d1,q_in,d2,q_out);
q=q_in-q_out//for an incmpressible fluid of volume v, q=(dv/dt)=q_in-q_out
D=1.4//diameter of tank
S=(%pi*D^2)/4
printf("\n volumatric flow in tank=%f m^3/s\n diameter of tank D=%f m\n surface area of tank S=%f m^2", q,D,S);
//z=fluid height
R_z=(q_in-q_out)/S//R_z rate of water level rise
printf("\n rate of water level rise R_z=%f m/s",R_z);
//R_z is positive ,the water level is rising in the tank from it's initial height of 1.5 m


