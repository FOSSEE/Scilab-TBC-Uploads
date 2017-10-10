//Example_a_10_6 page no:467
clc;
V1=10;
R2=400;
X1=[(10+(%i*500)),10
    (-%i*250),0];
X2=[(10+(%i*500)),(-%i*250)
    (-%i*250),(400+(%i*5000))];
i2=det(X1/X2);
V2=i2*R2;
V2mag=sqrt(real(V2)^2+imag(V2)^2);
V2ang=atand(imag(V2)/real(V2));
output_ratio=V2mag/V1;
disp(output_ratio,"the magnitude of ratio of output voltage of the source voltage is ");
disp(V2ang,"the angle of ratio of output voltage of the source voltage is (in degree)");
