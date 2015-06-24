clear;
clc;
printf("\t\t\tExample Number 6.11\n\n\n");
// alternate calculation method 
// example 6.10 (page no.-302) 
// solution

// data for this example is taken from previous example (6-10)
// properties for use in equation (6-34) are evaluated at free-atream conditions of 10 degree celsius
v = 14.2*10^(-6);// [square meter/s]
k = 0.0249;// [W/m degree celsius]
Pr = 0.712;// prandtl number
Pr_w = 0.70;// prandtl number
u = 7;// [m/s] velocity of air 
Sp = 0.0381;// [m] spacing between normal and parallel direction to the flow
Sn = 0.0381;// spacing between normal and parallel direction to the flow
d = 0.0254;// [m] diameter of tube
//maximum velocity is 
u_max = u*(Sn/(Sn-d));// [m/s]
// the reynolds number is 
Re_d_max = u_max*d/v;
// so that the constants for equation (6-34) are
C = 0.27;
n = 0.63;
// inserting values we obtain
h = C*Re_d_max^(n)*(Pr/Pr_w)^(1/4)*k/d;// [W/square meter degree celsius] heat transfer coefficient
// multiplying by 0.92 from table 6-7 (page no.-300) to correct for only five tube rows gives
h = 0.92*h;// [W/square meter degree celsius]
printf("the value of heat transfer coefficient is %f W/square meter degree celsius",h);
h_in = 163.46432;// [W/square meter degree celsius] from previous example
printf("\n\n the value of heat transfer coefficient for previous problem is %f W/square meter degree celsius",h_in);
P = (h-h_in)*100/h_in;
printf("\n\n percentage increase in value of h is %f",P);


 



