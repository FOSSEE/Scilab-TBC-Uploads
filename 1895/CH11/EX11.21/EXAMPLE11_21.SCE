//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 11
//Information Theory
clear all;
clc;
printf("EXAMPLE 11.21(PAGENO 504)");
//given
P_X = [.5 .5]//x matrix
P_YX = [.8 .2 0 ; 0 .2 .8];//yx matrix representation of given fig

//calculations
P_Y = P_X*P_YX;

//results
printf("\n\norobability associated with the channel outputs for p=.2 is")
disp(P_Y)
printf("\n\na.P(Y1) = %.2f",P_Y(1,1));
printf("\n\nb.P(Y2) = %.2f",P_Y(1,2));
printf("\n\nC.P(Y3) = %.2f",P_Y(1,3));
