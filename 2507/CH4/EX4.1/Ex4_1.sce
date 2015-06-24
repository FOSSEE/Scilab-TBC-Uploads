clc
clear
printf("Example 4.1 | Page number 93 \n\n");
//Find magnitude and direction of W_4
//Given Data
//four heat transfer
Q_1 = 900 //J
Q_2 = 80 //J
Q_3 = -800 //J
Q_4 = 150 //J
//four work interactions
W_1 = 200 //J
W_2 = 150 //J
W_3 = 300 //J
//W_4
//Solution
W_4 = Q_1 +Q_2 +Q_3 +Q_4 -W_1 -W_2 -W_3  
printf("Magnitude and Direction of the fourth work interaction, W4 = %.2f J",W_4)
