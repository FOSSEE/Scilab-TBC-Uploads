clc
clear 
printf('example 1.18 page number 53\n\n')

//to find error in actual data and nomographic chat value

//for my
ly = 8   //in cm
my = ly/((1/0.25) - (1/0.5));
lz = 10.15   //in cm
mz = lz/((1/2.85) - (1/6.76));
mx = (my*mz)/(my+mz);
printf("mx = %f cm\n",mx)
err = ((1-0.9945)/0.9945)*100;
printf("\nerror = %f \n",err)

x = 2
y = 0.5:0.5:2.5;

plot(x,y)
title("nomograph")
xlabel("x")
ylabel("y")

x = 3
y = 0.4:0.2:2;
plot(x,y)
