clear
clc
F=1000;//gm/min
W=10000;//gm
t_avg=W/F;
F_50=300;F_100=400;F_200=300;//gm/min
t_50=5;t_100=10;t_200=20;//min
unconverted=((((1/4)*(t_50/t_avg))-((1/20)*(t_50/t_avg)^2)+((1/120)*(t_50/t_avg)^3))*(F_50/F))+((((1/4)*(t_100/t_avg))-((1/20)*(t_100/t_avg)^2)+((1/120)*(t_50/t_avg)^3))*(F_100/F))+((((1/4)*(t_200/t_avg))-((1/20)*(t_200/t_avg)^2)+((1/120)*(t_50/t_avg)^3))*(F_200/F));
converted=1-unconverted;
printf("The mean conversion of soild is %f",converted)
printf("\n The answer slightly differs from those given in book as we have considered only significant terms in infinite series")