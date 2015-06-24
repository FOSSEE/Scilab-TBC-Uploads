pathname=get_absolute_file_path('22_2.sce')
filename=pathname+filesep()+'22_2data.sci'
exec(filename)
b=(2*%pi*r)/16;
for i=1:16
    angle(i)=(2*%pi/16)*(i-1);
    y(i)=r*cos(angle(i));
end
B1=A+ 2*((t*b)/6)*(2 +y(2)/y(1));
for i=1:16
    B(i)=B1;
    I(i)=B(i)*y(i)*y(i);
end
Ixx=sum(I);
qs(1)=0;
qs(8)=qs(1);
for i=2:5
    qs(i)=((-Sy*B(i)*y(i))/Ixx)+qs(i-1);
    qs(9-i)=qs(i);
end
qs1(1)=((-Sy*B(1)*y(1))/Ixx);
qs1(8)=qs1(1);
for i=2:5
    qs1(i)=((-Sy*B(18-i)*y(18-i))/Ixx)+qs1(i-1);
    qs1(9-i)=qs1(i);
end
Ac=%pi*r*r/16;
qs0=-(((Sy*d)-2*Ac*(sum(qs1)-sum(qs)))/(2*Ac*16));
Q=[qs;-qs1];
for i=1:16
    q(i)=Q(i)+qs0;
    printf("\nq: %f N/mm",q(i))
end