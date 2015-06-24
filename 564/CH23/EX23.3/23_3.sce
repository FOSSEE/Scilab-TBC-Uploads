pathname=get_absolute_file_path('23_3.sce')
filename=pathname+filesep()+'23_3data.sci'
exec(filename)
clear
for i=1:10
    ts(i)=t(i)*G(i)/Gref;
    del(i)=L(i)/ts(i);
end
for i=1:6
    I(i)=B(i)*y(i)*y(i);
end
Ixx=sum(I);
for i=1:6
    q1(i)=(-Sy/Ixx)*B(i)*y(i);
end
q=[q1(2);q1(1);0;q1(5);q1(3);q1(4)]
P=[(((del(4)+del(5)+del(6))/A(1))+(del(6)/A(2))) -(((del(3)+del(6)+del(10)+del(8))/A(2))+(del(6)/A(1))) del(8)/A(2);
   ((del(4)+del(5)+del(6))/A(1)) -(((-del(8))/A(3))+(del(6)/A(1))) (-((del(2)+del(8)+del(7)+del(1)+del(9))/A(3)));
   2*A(1) 2*A(2) 2*A(3)]
X=[-((q(6)*del(5) +q(6)*del(6))/A(1))+((q(4)*del(8) +q(5)*del(6))/A(2));
   -((q(6)*del(5) +q(6)*del(6))/A(1))+((-q(2)*del(9) +q(1)*del(8)+q(1)*del(7))/A(3));
   -q(5)*L(10)*L(5)-q(5)*L(10)*L(6)+q(2)*L(1)*L(9)];
X1=inv(P)*X;
X2=[X1(1,:);X1(2,:);X1(2,:);X1(3,:);X1(3,:);-q(2)+X1(3,:);q(4)-X1(3,:);q(4)-X1(1,:);q(6)+X1(1,:);-q(5)-X1(1,:)];
dth=(1/(2*Gref))*((((del(4)+del(5)+del(6))/A(1))*X1(1,:))-(del(6)/A(1))*X1(2,:)+((q(6)*del(5) +q(6)*del(6))/A(1)));
printf("\ndθ/dz: %f rad/mm\n",dth);
disp("shear flow distribution is(in order q34,q23,q87,q12,q56,q61,q57,q72,q48,q83)");
printf("\n %f N/mm",X2)

