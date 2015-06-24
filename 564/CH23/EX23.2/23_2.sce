pathname=get_absolute_file_path('23_2.sce')
filename=pathname+filesep()+'23_2data.sci'
exec(filename)
clear
for i=1:8
    ts(i)=(G(i)*t(i))/Gref;
    del(i)=L(i)/ts(i);
end
P=[(((del(1)+del(2))/A(1))+(del(2)/A(2))) -((del(2)/A(1))+((del(2)+del(3)+del(4)+del(5))/A(2))) (del(5)/A(2));
   ((del(1)+del(2))/A(1))  ((del(5)/A(3))-(del(2)/A(1)))  (-(del(5)+del(6)+del(7)+del(8))/A(3));
   2*A(1)  2*A(2)  2*A(3)];
X=[0;0;T]
q=inv(P)*X;
disp("shear flows are");
printf("\nqI: %f N/mm",q(1,:));
printf("\nqII: %f N/mm",q(2,:));
printf("\nqIII: %f N/mm\n",q(3,:));
disp("shear stress distribution is(in order 12o,12i,13,24,34,35,46,56)");
X1=[q(1,:)/t(1);(q(1,:)-q(2,:))/t(2);q(2,:)/t(3);q(2,:)/t(4);(q(2,:)-q(3,:))/t(5);
    q(3,:)/t(6);q(3,:)/t(7);q(3,:)/t(8)]
printf("\n %f N/mm^2",X1)
