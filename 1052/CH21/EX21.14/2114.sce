clc;
//Example 21.14 
//page no 290
printf("Example 21.14 page no 290\n\n");
//given: a 50 ft pipe with flowing water ,we have to determine the flow rate if there is an expansion from 3/8 inch to 1/8 inch and immediatly back to 3/8n inch with an overall pressure loss no greater than 2lbf/ft^2
//from table A.5 in the appendix 
S1=0.00133//cross sectional area of 3/8 inch pipe,ft^2
S2=0.00211//cross sectional area of 1/2 inch pipe,ft^2
K_e=(1-S1/S2)^2//expansion constant
K_c=0.4*(1-S2/S1)^2//contraction constant
L=50//length of pipe
D=0.03125//diameter of pipe
v=1.93//velocity ,ft/s
f=0.01124//friction factor from table 21.3,for velocity estimated to be 1.93 ft/s
g_c=32.2 
h_f=(4*f*L/D  + K_e + K_c)*(v^2*g_c)//frictional loss
printf("\n frictional loss h_f=%f ft.lbf/lb ",h_f);
