//Example 16.2
//Linear Shooting Method
//Page no. 576
clc;close;clear;

deff('y=f1(x,y,y1)','y=-x*y1+x^2*y+2*x^3')
deff('y=F1(x,y,y1)','y=-x*y1+x^2*y+2*x^3')
deff('y=F2(x,y,y1)','y=-x*y1+x^2*y')
a=0;b=1;
y0=1;y1=-1;n=5;
h=(b-a)/n
y=y0;y01=0;x=a;
for i=0:5
    yi1(1,i+1)=y
    K1=h*y01;
    R1=h*F1(x,y,y01);
    K2=h*(y+R1/2);
    R2=h*F1(x+h/2,y+K1/2,y01+R1/2)
    K3=h*(y01+R2/2)
    R3=h*F1(x+h/2,y+K2/2,y01+R2/2)
    K4=h*(y+R3)
    R4=h*F1(x+h,y+K3,y01+R3)
    y=y+(K1+2*K2+2*K3+K4)/6
    y01=y01+(R1+2*R2+2*R3+R4)/6
    x=x+h
end
y=0;y01=1;x=a;
for i=0:5
    yi2(1,i+1)=y
    K1=h*y01;
    R1=h*F2(x,y,y01);
    K2=h*(y+R1/2);
    R2=h*F2(x+h/2,y+K1/2,y01+R1/2)
    K3=h*(y01+R2/2)
    R3=h*F2(x+h/2,y+K2/2,y01+R2/2)
    K4=h*(y+R3)
    R4=h*F2(x+h,y+K3,y01+R3)
    y=y+(K1+2*K2+2*K3+K4)/6
    y01=y01+(R1+2*R2+2*R3+R4)/6
    x=x+h
end
for i=1:6
    yi(i)=yi1(1,i)+((y1-yi1(6))/yi2(6))*yi2(i)
end
y=1;x=a;y01=y1
for i=0:5
    yir(1,i+1)=y;
    K1=h*y01;
    R1=h*f1(x,y,y01);
    K2=h*(y+R1/2);
    R2=h*f1(x+h/2,y+K1/2,y01+R1/2)
    K3=h*(y01+R2/2)
    R3=h*f1(x+h/2,y+K2/2,y01+R2/2)
    K4=h*(y+R3)
    R4=h*f1(x+h,y+K3,y01+R3)
    y=y+(K1+2*K2+2*K3+K4)/6
    y01=y01+(R1+2*R2+2*R3+R4)/6
    x=x+h
end
x=a;
printf('\n   ------------------------------------------------------------------------------------------------------\n\tx')
for i=1:6
    printf('\t%.1f\t',x)
    x=x+h
end
printf('\n\ty')
for i=1:6
    printf('\t%.4f\t',yi(i))
end
printf('\n    by RK')
for i=1:6
    printf('\t%.4f\t',yir(i))
end
printf('\n   ------------------------------------------------------------------------------------------------------')
printf('\n\n\nNote: Computation error in calculation of values by RK method performed in book')