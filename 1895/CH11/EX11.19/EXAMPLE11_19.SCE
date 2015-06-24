//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 11
//Information Theory
clear all;
clc;
printf("EXAMPLE 11.19(PAGENO 502)");
//given
//from fig
P_X = [.5 .5]//x matrix
P_Xd = [.5 0; 0 .5]//diagonal x matrix
//calculations
P_YX = [.9 .1; .2 .8];//yx matrix representation of given fig
P_Y = P_X*P_YX//y matrix
P_XY = P_Xd * P_YX//xy  matrix

//results
printf("\n\ni.Channel matrix of the channelP_YX ");
disp(P_YX);
printf("\n\nii.a.P(y1) = %.2f",P_Y(1,1));
printf("\n\n   b.P(y2) = %.2f",P_Y(1,2));
printf("\n\niii.a.P(x1,y2) = %.2f",P_XY(1,2));
printf("\n\n     b.P(x2,y1) = %.2f",P_XY(2,1));
