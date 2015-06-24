//Example 4.8.1 page 4.39

clc;
clear;
lamda = 850*10^-9;  		//meters
BER= 1*10^-9;
N_bar = 9*log(10);
h= 6.625*10^-34;   		 //joules-sec
v= 3*10^8;  			//meters/sec
n= 0.65;       			// assumption
E=N_bar*h*v/(n*lamda);
E=E*10^18;			///converting in proper format for displaying...
printf("The Energy received is %.2fx10^-18 Joules",E);
