// Exa 10.6
// To find probability that SNR will fall below 10dB(= 10).

clc;
clear all;

E0=1000; //average SNR
Eg=10; //threshold value for SNR
M=3;  //3-Branch Combiner
e=2.71828; //Euler's number

//solution
x=Eg/E0;
P3=(1-e^(-x))^M; //Considering 3-branch selection combiner
printf('By considering 3-branch selection combiner technique, probability comes to be %d * 10^-6\n ',round(P3*10^6));

disp("When diversity is not used, M =1");
P1=(1-e^(-x));//M=1;
printf(' BY not considering diversity technique, probability comes to be %d * 10^-2 \n',round(P1*10^2));
