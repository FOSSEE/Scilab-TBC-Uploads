clc
clear 
printf("example 4.5 page number 133\n\n")

//to find variation of losses with velocity
loss_ratio=3.6;     //delta_P2/delta_P1=3.6
velocity_ratio=2;   //u2/u1=2
n=log2(loss_ratio);  //delta_P2/delta_P1=(u2/u1)^n
printf("power constant = %f flow is turbulent",n)
