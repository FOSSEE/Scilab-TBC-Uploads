//Eg-3.16
//pg-113

clear
clc

 A=[3.6 2.1 0;0.6 7.9 1.6;0 1.3 13.4 ];
 b=[3.6;7.9;13.4];
 c=[2.1;1.6];
 a=[0.6;1.3];
 r=[-.7;1.1;2.9];
 
 n=3;
 Beta=zeros(3,1);
 Gamma=zeros(3,1);
 Beta(1)=b(1);
 Gamma(1)=r(1)/Beta(1);
 
 for j=2:3
     Beta(j)=b(j)-a(j-1)*c(j-1)/Beta(j-1);
 end
 
 for j=2:3
     Gamma(j)=(r(j)-a(j-1)*Gamma(j-1))/Beta(j);
 end
 
 X=zeros(3,1);
 
 X(3)=Gamma(3);
 X(2)=Gamma(2)-c(2)*X(3)/Beta(2);
 X(1)=Gamma(1)-c(1)*X(2)/Beta(1);
 
 disp("result")
 disp(X)