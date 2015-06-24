clc
clear 
printf("example 6.12 page number 231\n\n")

//to find the top and bottom composition
x = [1;0.69;0.40;0.192;0.045;0];
y = [1;0.932;0.78;0.538;0.1775;0];
plot(x,y)
xlabel("x")
ylabel("y")
title("distillation curve")
x = 0:0.1:1;
y = 0:0.1:1;
plot(x,y)
x = [0.5,0.31];
y = [0.5,0.7];
plot (x,y)
Z=0.5;
y_D=0.69;
x_W=0.31;


printf("composition of top product = %f mole percent of hexane",y_D*100)
printf("\n\ncomposition of bottom product = %f mole percent of hexane",x_W*100)
