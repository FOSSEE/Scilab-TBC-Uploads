//Example_a_7_8 page no:276
clc;
I1mag=50/6.7;
I1ang=0-26.56;
I2mag=80/6.7;
I2ang=90-26.56;
I1real=I1mag*cosd(I1ang);
I1imag=I1mag*sind(I1ang);
I1=I1real+(%i*I1imag);
I2real=I2mag*cosd(I2ang);
I2imag=I2mag*sind(I2ang);
I2=I2real+(%i*I2imag);
I=I1+I2;
//calculating the required current values
Imag=sqrt(real(I)^2+imag(I)^2);
Iang=atand(imag(I)/real(I));
disp(Imag,"the magnitude of current passing through 2+3i ohm impedence is (in A)");
disp(Iang,"the angle of current passing through 2+3i ohm impedence is (in degree)");
