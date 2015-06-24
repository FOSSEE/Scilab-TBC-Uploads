clc
//Initialization of variables
w1=0.0176 //lbm
w2=0.0093 //lbm
T2d=73//F
T2=55 //F
//calculations
disp("From steam tables,")
hv1=1061+0.445*100
hv2=1061+0.445*55
hf=23.06
q1=20
q2=4.88
//results
printf("Heat removed in cooling section = %d Btu/lbm ",q1)
printf("Heat added in heating section = %.2f Btu/lbm ",q2)
