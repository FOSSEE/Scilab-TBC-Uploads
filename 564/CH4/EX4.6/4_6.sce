pathname=get_absolute_file_path('4_6.sce')
filename=pathname+filesep()+'4_6data.sci'
exec(filename)
L=[(h^2 +AB^2)^0.5;BC;(h^2 +CD^2)^0.5;CD;BC;AB;h;(h^2 +BC^2)^0.5;h];//column 2
A=atan(h/AB),B=atan(h/BC),D=atan(h/CD);
lFC=Load2;
P=[
   0 0 sin(D) 0 0 0 0 sin(B);
   cos(A) 0 0 0 0 1 0 0;
   cos(A) -1 0 0 0 0 0 0;
   sin(A) 0 0 0 0 0 1 0;
   0 0 0 -1 1 0 0 0;
   0 0 0 0 1 -1 0 cos(B);
   0 0 0 0 0 0 1 -sin(B);
   0 1 -cos(D) 0 0 0 0 cos(B);];
X=[-Load2;0;0;-Load1;0;0;Load1;0];
D1=[0;0;0;1;1;1;0;0;0];//F1,D
FC=0;
P1=[cos(A) 0 0 0 0 1 0 0;
    0 0 cos(D) 1 0 0 0 0;
    cos(A) -1 0 0 0 0 0 0;
    sin(A) 0 0 0 0 0 1 0;
    0 0 0 -1 1 0 0 0;
    0 0 0 0 1 -1 0 cos(B);
    0 0 0 0 0 0 1 sin(B);
    0 0 1 0 0 0 0 1]
X1=[0;0;0;0;0;0;1;0]
FA=[inv(P)*X;lFC];//FA
B1=[inv(P1)*X1;FC];//F1,B
for i=1:9
    K1(i)=FA(i)*B1(i)*L(i);//FA.F1,B.L
    K2(i)=FA(i)*D1(i)*L(i);//FA.F1,D.L
end
delB=(sum(K1)*10^3)/(E*CS);
delD=(sum(K2)*10^3)/(E*CS);
printf("\nδB,v: %f mm",delB);
printf("\nδD,h: %f mm",delD);
