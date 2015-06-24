//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 11
//Information Theory
clear all;
clc;
printf("EXAMPLE 11.21(PAGENO 504)");

//given
//wkt P_Y = P_X*P_YX from previous problems
alfa = .5
P_1 = .1//probability for first case
P_2 = .5//probability for second case

//calculations
P_X = [alfa alfa];
//first case
P_YX = [1-P_1 P_1;P_1 1-P_1];
P_Y1 = P_X*P_YX;
H_Y1 = -P_Y1(1,1)*log2(P_Y1(1,1))-P_Y1(1,2)*log2(P_Y1(1,2));
Q_1 = P_1*log2(P_1)  + (1-P_1)*log2(1-P_1)//from proof
 I_XY1 =  1 + Q_1;
//second case
P_YX = [1-P_2 P_2;P_2 1-P_2];
P_Y2 = P_X*P_YX;
H_Y2 = -P_Y2(1,1)*log2(P_Y2(1,1))-P_Y2(1,2)*log2(P_Y2(1,2));
Q_2 = P_2*log2(P_2)  + (1-P_2)*log2(1-P_2)//from proof 
I_XY2 =  1 + Q_2;

//results
printf("\n\nI_XY for the first case = %.2f",I_XY1);
printf("\n\nI_XY for the second case = %.2f",I_XY2);
