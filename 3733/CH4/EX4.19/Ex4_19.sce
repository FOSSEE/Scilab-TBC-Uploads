//Example 4_19
clc;funcprot(0);
//Given data
P_1=36000;// kW
P_2=27000;// kW
N_1=81.8;// r.p.m
H_1=13;// m
H_2=11;// m
D_1=7.82;// m

//Calculation
//As the specific speeds are the same,using the definition of specific speed in terms of power,
N_2=((N_1*sqrt(P_1)/(H_1^(5/4)))*((H_2^(5/4))/sqrt(P_2)));// rpm
// As the unit speeds are same,
D_2=(D_1*N_1*sqrt(H_2))/(sqrt(H_1)*N_2);// m
// As the unit flow is same,Q=Q_2/Q_1
Q=(D_2^2*H_2^(1/2))/((D_1^2*H_1^(1/2)));
// By solving Q, it gives the relation,Q_2=0.886*Q_1;
Q_r=(1-Q)*100;
printf('\n Speed,N_2=%0.1f rpm \n Diameter,D_2=%0.2f m \n There is a reduction in flow by about %0.2f percentage.',N_2,D_2,Q_r);
// The answer vary due to round off error
