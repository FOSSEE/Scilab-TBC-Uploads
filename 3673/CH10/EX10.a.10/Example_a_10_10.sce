//Example_a_10_10 page no:471
clc;
R=10;
X1=[(-%i*11),10
    (%i*18),0];
X2=[-(%i*11),(%i*18)
    (%i*18),(10-(%i*3))];
i2=det(X1/X2);
i2mag=sqrt(real(i2)^2+imag(i2)^2);
v2=i2mag*R;
v2=det(v2);
disp(v2,"the voltage across 10 ohm resistor is (in V)");
