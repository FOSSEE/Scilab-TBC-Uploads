clear
clc
t_avg=60;t=20;//min
//For chemical rxn controlling, t =kR
unconverted=((1/4)*(t/t_avg))-((1/20)*(t/t_avg)^2)+((1/120)*(t/t_avg)^3);
//For ash layer diffusion controlling,t=k1R^2
unconverted1=((1/5)*(t/t_avg))-((19/420)*(t/t_avg)^2)+((41/4620)*(t/t_avg)^3);
c_avg=(unconverted+unconverted1)/2;
printf("Fraction of original sulfide ore remain unconverted is %f",c_avg)
