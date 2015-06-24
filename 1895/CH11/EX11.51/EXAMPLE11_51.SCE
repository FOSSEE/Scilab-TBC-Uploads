//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 11
//Information Theory
clear all;
clc;
printf("EXAMPLE 11.51(PAGENO 535)");

//given
P_x1 = .3//probability of first signal
P_x2 = .4//probability of second signal
P_x3 = .3//probability of third signal
P_YX = [.8 .2 0;0 .1 0; 0 .3 0.7]//matrix obtained from the figure 

//calculations
I_x1 = -log2(P_x1);
I_x2 = -log2(P_x2);
I_x3 = -log2(P_x3);
H_X = P_x1*I_x1 +  P_x2*I_x2 +  P_x3*I_x3 //entropy
P_y1 = P_YX(1,1)*P_x1 + P_YX(1,2)*P_x1 + P_YX(1,3)*P_x1;
P_y2 = P_YX(2,1)*P_x2 + P_YX(2,2)*P_x2 + P_YX(2,3)*P_x2;
P_y3 = P_YX(3,1)*P_x3 + P_YX(3,2)*P_x3 + P_YX(3,3)*P_x3;
I_y1 = -log2(P_y1);
I_y2 = -log2(P_y2);
I_y3 = -log2(P_y3);
H_Y = -P_y1*I_y1 -  P_y2*I_y2 -  P_y3*I_y3 //entropy

//results
printf("\n\n Entropy H(X) = %.2f",H_X );
printf("\n\nEntropy H(Y) = %.2f",H_Y);
printf("\n\n Note:There is mistake in the calculation of P_y3 in the textbook so their is change in entropy H_Y")
