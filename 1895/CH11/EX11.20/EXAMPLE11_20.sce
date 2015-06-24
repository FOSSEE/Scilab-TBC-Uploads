//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 11
//Information Theory
clear all;
clc;
printf("EXAMPLE 11.20(PAGENO 503)");
//given
P_X = [.5 .5]//x matrix

//calculations
P_YX = [.9 .1; .2 .8];//yx matrix representation of given fig
P_ZY = [.9 .1; .2 .8]//zy matrix representation of given fig
P_Y = P_X *P_YX//y matrix
P_ZX = P_YX * P_ZY//zx  matrix
P_Z = P_X *P_ZX//z matrix


//results
printf("\n\ni.Channel matrix of the channelP_ZX ");
disp(P_ZX);
printf("Matrix P(Z)")
disp(P_Z);
printf("\n\na.P(Z1) = %.2f",P_Z(1,1));
printf("\n\nb.P(Z2) = %.2f",P_Z(1,2));

