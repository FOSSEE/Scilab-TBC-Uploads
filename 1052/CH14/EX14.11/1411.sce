clc;
//Example 14.11
//page no 164
printf("Example 14.11 page no 164\n\n");
//a fluid is flowing through a pipe
D=2//inside diameter of pipe,in
v_max=30//maximum velocity,ft/min
A=(%pi/4)*(D/12)^2//cross sectional area
//(a) for laminar flow 
v_a=(1/2)*v_max//average velocity
q_a=v_a*A//volumatric flow rate
printf("\n flow rate q_a=%f ft^3/min",q_a);
//(b) for plug flow 
v_b=v_max//average velocity 
q_b=v_b*A//volumatric flow rate
printf(" \nflow rate q_b=%f ft^3/min",q_b);
//(c)for turbulent flow
v_c=(49/60)*v_max//average velocity
q_c=v_c*A//volumatric flow rate
printf("\n flow rate q_c=%f ft^3/min",q_c);
