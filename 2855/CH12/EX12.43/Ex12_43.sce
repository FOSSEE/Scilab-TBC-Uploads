//Chapter 12
//page no 538
//given
clc;
clear ;
M=1;            
N=1;            //no of collision 
S1=4;           //soliton colllision 
S2=5;       //soliton colllision 
Nc=S1*S1/4*[M*S1/2-M+N];        //minimum no of collision
printf("\n Ncollision for S=4,is %0.0f",Nc);
Nc2=(S2*S2-1)/4*[M*S2/2-M+N];        //minimum no of collision
printf("\n Ncollision for S=5,is %0.0f",Nc2);






