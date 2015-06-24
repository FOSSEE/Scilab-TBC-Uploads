clc;
//Example 29.6
//page no 458
printf("Example 29.6 page no 458\n\n");
//a baghouse has been used to clean a particulate gas steam
l_i=5//inlet loading,grains/ft^3
l_o=0.03//outlet loading,grains/ft^3
l_o_max=0.4//maximum outlet loading,grains/ft^3
E_b=(l_i-l_o)/l_i//efficiency before bag failure
P_t=1-E_b//penetration before bag failure
E=(l_i-l_o_max)/l_i//efficiency on regulatory conditions
P_t_r=1-E//penetration regulatory conditons
P_tc=P_t_r-P_t//penetration associated with failed bags
printf("\n penetration associated with failed bags P_tc=%f ",P_tc);
P_drop=6//pressure drop,in of H2O
T=250//temperature,deg F
q=50000//volumetric flow rate,acfm
D=8//diamter of bags,in
L= q*P_tc/(0.582*P_drop^0.5*D^2*(T+460)^0.5)//number of bag failure that the system can tolerate and still remain in compliance
printf("\n no. of bags L=%f ",L);
//thus if two bags fail,baghouse is out of complance
