clc;
clear;
Xij = [9 12 11; 10 11 12; 9 9 10; 10 11 12];
disp(Xij,"Xij =");
Xij=Xij - 10;
disp(Xij,"Xij-30 =");
T1=0;
T2=0;
T3=0;
T4=0;
Total_Square=0;
 for i=1
     for j=1:3
   T1= Xij(i,j) + T1;
 end
end
for i=2
     for j=1:3
   T2= Xij(i,j) + T2;
 end
end
for i=3
     for j=1:3
   T3= Xij(i,j) + T3;
 end
end
for i=4
     for j=1:3
   T4= Xij(i,j) + T4;
 end
end
T=T1+T2+T3+T4;
disp(T,"T=T1+T2+T3 = ");
 for i=1
     for j=1:3 
   Total_Square= Xij(i,j)^2 + Total_Square;
 end
end
for i=2
     for j=1:3
   Total_Square= Xij(i,j)^2 + Total_Square;
 end
end
for i=3
     for j=1:3
   Total_Square= Xij(i,j)^2 + Total_Square;
 end
end
for i=4
     for j=1:3
   Total_Square= Xij(i,j)^2 + Total_Square;
 end
end
disp(Total_Square,"Total of Squares = ");
N=12;
C_F=(T^2)/N;
Total_SS= Total_Square - C_F;
SS_b_C= ((T1^2)+(T2^2)+(T3^2)+(T4^2))/3 -(C_F);
SS_b_E= 6.5
SSE=Total_SS - SS_b_C - SS_b_E;
disp(SSE,"SSE=",SS_b_E,"SS between Experiments =",SS_b_C,"SS between Consignments",Total_SS,"Total SS =",C_F,"C.F =");
c_d= sqrt(0.47)*sqrt(2*4)*2.45;
disp(T1-T2,"|T1-T2| =",T1-T3,"|T1-T3|=",T3-T2,"|T2-T3|=" );
disp("Comparing these figure with critical difference 4.8 we find that experimenters  A and B and A & C differ significantly ",c_d,"Critical Difference = ");
