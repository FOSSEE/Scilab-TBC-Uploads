clc;
//Example 28.6
//page no 434
printf("Example 28.6 page no 434\n\n");
//comparison between flow in pipes and open channel flow
//water is passing through a trapezodial channel
l_b=20//length of bottom base,ft
l_t=50//length of top base,ft
h=7.5//height of channel,ft
A = (l_b+ l_t)*(h/2)//cross sectional area
P = l_b +sqrt(h^2+ (2*h)^2)//perimeter of trapezoid
r_h=A/P//hydrulic radius
S=0.0008//coeff. in manning equation
n=0.02//coeff. in manning eq.
q = 1.486*A*r_h^(2/3)*S^(1/2)/n//manning equation to determine flow rate
printf("\n volumetric flow rate q=%f ft^3/s",q);
