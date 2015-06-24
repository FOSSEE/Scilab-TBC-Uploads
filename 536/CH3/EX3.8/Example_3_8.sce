clc;
printf("Example 3.8\n");

d=0.15; // diameter of pipe
g=9.81;
printf("\n Given\n Diameter of pipe = %.2f",d); 
// From equation 3.20, the head lost due to friction is given by:
// hf = 4*phi*l*u^2/(d*g)m water
// The total head loss is:
// h=(u^2/(2*g))+hf+loss in fittings
// From Table 3.2., the losses in the fittings are:From Table 3.2., the losses in the fittings are:
//6.6*u^2/(2*g)
//Taking
phi=.0045;
x=poly([0],'x');
u=roots((7.6+4*phi*(105/.15))*x^2/(2*g)-10);
printf("\n\n Velocity = %.2f m/s",u(1));
rate_dis=u(1)*%pi*d^2/4;
printf("\n Rate of discharge = %.3f m^3/s = %d kg/s",rate_dis,rate_dis*1e3);