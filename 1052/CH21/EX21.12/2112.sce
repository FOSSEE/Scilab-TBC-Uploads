clc;
//Example 21.12
//page no 288
printf("Example 21.12 page no 288\n\n");
//refer to illustrative Example 21.4
// if the pipe contains two globe valves and one straight through tee,what is the friction loss
K_f_globe=6
K_f_tee=0.4
v=2.53// flow velocity 
g_c=32.2
f=5/4//friction factor
L=144//lenth of pipe
D=62.4//diameter
h_f=4*f*(L/D) + (2*K_f_globe + K_f_tee)*(v^2/(2*g_c))
printf("\n frictional loss h_f=%f ft.lbf/lb",h_f);
 
