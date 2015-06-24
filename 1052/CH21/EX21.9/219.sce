clc;
//Example 21.9 page no 286
printf("Example no 21.9 page no 286\n\n");
//water is flowing in a vertical pipe 
//assume constant velocity 
P_drop=-4.5//pressure drop from bottom to top
rho=62.4 //density of water 
z2=15//height of pipe
z1=0//bottom level
//applying bernoulli equation 
h_f=(P_drop/rho)+(z2-z1)//frictional loss 
printf("\n frictional loss h_f=%f ft.lbf/lb ",h_f)
