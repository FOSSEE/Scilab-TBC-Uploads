//Chapter 12
//page no 539
//given
clc;
clear;
S=4;
n=5;
printf("\n Maximum number of solition Collisions\n");
for M = 1:n
N=M;
Nc=S*[M*S*S/3+S*(N/2-M)-N/2+2*M/3];      //minimum no of collision
printf("\n M=%0.0f    N=%0.0f     S=%0.0f ,is     %0.0f",M,N,S,Nc);//result

    
end
