pathname=get_absolute_file_path('20_4.sce')
filename=pathname+filesep()+'20_4data.sci'
exec(filename)
clear
for i=1:8
    I(i)=B(i)*y(i)*y(i);
end
Ixx=sum(I);
P=(-Sy/Ixx);
qb1(1)=0,qb2(1)=0;
for i=2:3
    qb1(i)=P*B(i+1)*y(i+1) +qb1(i-1);
    qb2(i)=(P*B(i+5)*y(i+5) +qb2(i-1));
end
qb1(4)=qb1(2);
qb2(4)=qb2(2);
qb=[qb1;-qb2];
A= (y(1)+y(2))*x(3) +(y(2)+y(3))*x(2) +(y(3)+y(4))*x(1);
qs0=(qb(7)*(x(2)+x(3))*(2*y(1)) +2*qb(6)*(x(3)*y(2) +x(3)*(y(2)-y(1))) + 2*qb(1)*x(2)*y(3) -2*qb(2)*x(1)*y(3) -qb(3)*2*y(4)*x(1))/(2*A);
q=[qb1+qs0*ones(4,1);qb2+qs0*ones(4,1);];
disp("shear flow(in order q23,q34,q45,q56,q67,q12,q78,q81)");
printf("\n q: %f N/mm",q)
