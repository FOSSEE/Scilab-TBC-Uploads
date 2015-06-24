clc;
clear;

printf("\n Example 5.2\n");

M_p_d=0.2e-3; // Mean particle diameter
printf("\n Given:\n Mean particle diameter = %.1f mm",M_p_d*1e3);
f_r_w=0.5; //Flow rate of water
printf("\n Flow rate of water = %.1f kg/s",f_r_w);
id=25e-3; //Diameter of pipe
printf("\n Diameter of pipe = %d mm",id*1e3);
l=100; //length of pipe
printf("\n length of pipe = %d m",l);
t_vel=0.0239; //Terminal velocity of falling sand particles
printf("\n Terminal velocity of falling sand particles = %.4f m/s",t_vel);
//Assuming the mean velocity of the suspension is equal to the water velocity, that is, neglecting slip, then:
Um=f_r_w/(1000*%pi*id^2/4);
printf("\n\n Calculations:\n Mean velocity of suspension = %.2f m/s",Um);
Re=id*Um*1000/0.001;
printf("\n Reynolds no. of water alone = %d",Re);
//Assuming e/d = 0.008, then, from Figure 3.7:
phi=0.0046;
f=0.0092;
//From, equation 3.20, the head loss is:
hf=4*phi*l*Um^2/(9.81*id);
printf("\n Head loss = %.1f m water",hf);
iw=hf/l;
printf("\n Hydraulic gradient = %.3f m water/m",iw);
i=300*1000/(1000*9.81*100);
// Substituting in equation 5.20:
C=(iw/(i-iw)*(1100*9.81*id*(2.6-1)*t_vel)/(Um^2*Um))^-1;
printf("\n C = %.2f",C);
//If G kg/s is the mass flow of sand, then:
G=poly([0],'G');
p=2600^-1*G-0.30*(2600^-1*G+.0005);
printf("\n Mass flow of sand = %.2f kg/s",roots(p));
printf("")