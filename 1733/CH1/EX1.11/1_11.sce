//1.11
clc;
//when conduction period is 2*pi
amplitude=200;
pd=1.8;
power_loss_average= amplitude*pd*2*%pi/(2*%pi);
printf("power loss average when conduction period is 2*pi= %.0f W",power_loss_average)

//when conduction period is pi
amplitude=400;
pd=1.9;
power_loss_average= amplitude*pd*%pi/(2*%pi);
printf("\npower loss average when conduction period is pi= %.0f W",power_loss_average)
