//Eg-3.15
//pg-109

clear
clc

 A=[4 3 0 0;3 3.4 1.7 0;0 1.7 -1.3 0.9;0 0 0.9 2 ];
 b=[4;3.4;-1.3;2];
 c=[3;1.7;0.9];
 a=[3;1.7;0.9];
 r=[19.7;58.3;33.1;27.6];
 
 n=4;
 Beta=zeros(4,1);
 Gamma=zeros(4,1);
 
 Beta(1)=b(1);
 Gamma(1)=r(1)/Beta(1);
 
 for j=2:4
     Beta(j)=b(j)-a(j-1)*c(j-1)/Beta(j-1);
 end
 
 for j=2:4
     Gamma(j)=(r(j)-a(j-1)*Gamma(j-1))/Beta(j);
 end
 
 X=zeros(4,1);
 
 X(4)=Gamma(4);
 X(3)=Gamma(3)-c(3)*X(4)/Beta(3);
 X(2)=Gamma(2)-c(2)*X(3)/Beta(2);
 X(1)=Gamma(1)-c(1)*X(2)/Beta(1);
 
 disp("result")
 disp(X)