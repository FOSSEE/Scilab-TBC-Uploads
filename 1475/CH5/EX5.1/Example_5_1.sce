// Example 5.1 A random sample of five motor car tyres
clc;
clear;
Xij = [35 34 34 33 34; 32 32 31 28 29; 34 33 32 32 33 ];
disp(Xij,"Xij =");
Xij=Xij - 30;
disp(Xij,"Xij-30 =");
T1=0;
T2=0;
T3=0;
Total_Square=0;
 for i=1
     for j=1:5
   T1= Xij(i,j) + T1;
 end
end
for i=2
     for j=1:5
   T2= Xij(i,j) + T2;
 end
end
for i=3
     for j=1:5
   T3= Xij(i,j) + T3;
 end
end
T=T1+T2+T3;
disp(T,"T=T1+T2+T3 = ");
 for i=1
     for j=1:5e 
   Total_Square= Xij(i,j)^2 + Total_Square;
 end
end
for i=2
     for j=1:5
   Total_Square= Xij(i,j)^2 + Total_Square;
 end
end
for i=3
     for j=1:5
   Total_Square= Xij(i,j)^2 + Total_Square;
 end
end
disp(Total_Square,"Total of Squares = ");
N=15;
C_F=(T^2)/N;
Total_SS= Total_Square - C_F;
SSB= ((T1^2)+(T2^2)+(T3^2))/5 -(C_F);
SSE=Total_SS - SSB;
disp(SSE,"SSE=",SSB,"SSB =",Total_SS,"Total SS =",C_F,"C.F =");
c_d= sqrt(1.5)*sqrt(2*5)*2.18;
disp(T1-T2,"|T1-T2| =",T1-T3,"|T1-T3|=",T3-T2,"|T2-T3|=" );
disp("Comparing these figure with critical difference 8.44 we find that brands A and B are of Different quality and so are brand B and C. Brands A and C may be taken to be of the same quality ",c_d,"Critical Difference = ");
