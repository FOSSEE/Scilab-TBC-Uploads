clc
clear
printf("example 1.11 page number 35\n\n")

//to find the average velocity

u = [2;1.92;1.68;1.28;0.72;0];
r = [0;1;2;3;4;5];

z = u.*r;
plot(r,z)
title("variation of ur with r")
xlabel("r")
ylabel("ur")

//by graphical integration, we get
u_avg = (2/25)*12.4
printf("average velocity = %f cm/s\n",u_avg)
