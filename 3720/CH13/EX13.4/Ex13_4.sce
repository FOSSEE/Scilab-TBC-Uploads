//Example 13_4
clc;clear;
// Given values
S_0=0.003;// Bottom slope
n_1=0.030;
n_2=0.050;

// Calculation 
s=sqrt(3^2+3^2);
//Then the flow area, perimeter, and hydraulic radius for each subsection and the entire channel become
// Subsection 1:
A_c1=21;// m^2
p_1=10.486; // m
R_h1=A_c1/p_1;// m
// Subsection 2:
A_c2=16;// m^2
p_2=10;// m
R_h2=A_c2/p_2;// m
// Entire channel
A_c=A_c1+A_c2;// m^2 
p=p_1+p_2;// m
R_h=A_c/p;// m
//Using the Manning equation for each subsection,
a=1;//m^(1/3)/s
v_1=(a/n_1)*(A_c1*R_h1^(2/3))*(S_0)^(1/2);// m^3/s
v_2=(a/n_2)*(A_c2*R_h2^(2/3))*(S_0)^(1/2);// m^3/s
v=v_1+v_2;// m^3/s
printf('The total flow rate through the channel,V=%0.0f m^3/s\n',v);
n_eff=(a*A_c*R_h^(2/3)*S_0^(1/2))/v;
printf('The effective Manning coefficient for the entire channel ,n_eff=%0.3f \n',n_eff);
