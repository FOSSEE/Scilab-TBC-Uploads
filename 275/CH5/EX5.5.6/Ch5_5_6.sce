clc
disp("Example 5.6")
printf("\n")
disp("Calculate new level of output voltage when it has fallen by 4db")
printf("Given\n")
//output voltage of an amplifier is 2V when frequency 1khz
V1=2
//power in db
Po=-4
//new level of output voltage
V2=10^(Po/20)*V1
printf("new output voltage \n%f volt\n",V2)
