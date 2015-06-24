clc;
clear;
Xij = [-1 -8 -3 0 2 0 0; 1 6 5 8 0 0 0; 16 11 15 14 0 0 0; 12 10 13 12 11 14 12 ];
disp(Xij,"Xij =");
T1=0;
T2=0;
T3=0;
T4=0;
Total_Square=0;
 for i=1
     for j=1:7
   T1= Xij(i,j) + T1;
 end
end
for i=2
     for j=1:7
   T2= Xij(i,j) + T2;
 end
end
for i=3
     for j=1:7
   T3= Xij(i,j) + T3;
 end
end
for i=4
     for j=1:7
   T4= Xij(i,j) + T4;
 end
end
T=T1+T2+T3+T4;
disp(T,"T=T1+T2+T3 = ");
 for i=1
     for j=1:7 
   Total_Square= Xij(i,j)^2 + Total_Square;
 end
end
for i=2
     for j=1:7
   Total_Square= Xij(i,j)^2 + Total_Square;
 end
end
for i=3
     for j=1:7
   Total_Square= Xij(i,j)^2 + Total_Square;
 end
end
for i=4
     for j=1:7
   Total_Square= Xij(i,j)^2 + Total_Square;
 end
end
disp(Total_Square,"Total of Squares = ");
N=20;
C_F=(T^2)/N;
Total_SS= Total_Square - C_F;
SSB= ((T1^2)/5+(T2^2)/4+(T3^2)/4+(T4^2)/7) -(C_F);
SSE=Total_SS - SSB;
disp(SSE,"SSE=",SSB,"SSB =",Total_SS,"Total SS =",C_F,"C.F =");
disp("Since the observed value of f is larger than the 1 % tabulated value corresponding to df. (3,16), we reject the null hypothesis and conclude that the means of normal populations are not equal = ");
