pathname=get_absolute_file_path('22_1.sce')
filename=pathname+filesep()+'22_1data.sci'
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
for i=1:16
    Sz(i)=(Mx*y(i))/Ixx;
    printf("\nσz%f =",i);
    printf(" %f N/mm^2",Sz(i))
end




