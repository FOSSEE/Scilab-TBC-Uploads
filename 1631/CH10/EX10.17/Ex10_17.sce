//Caption: code vectors
//Example 10.17
//page no 498
//Determine all possible code vectors 
clc;
clear;
m3=1;
m2=0;
m1=1;
m0=0;
//M=Message Matrix
//G=Generator Matrix
G=[1 0 1 1 0 0 0;0 1 0 1 1 0 0;0 0 1 0 1 1 0;0 0 0 1 0 1 1];
M=[m3 m2 m1 m0;];
X=M*G;
for i=1:7;
    if X(i)>1
        X(i)=0
     end
 end
disp(X,"The code vectors are ");
