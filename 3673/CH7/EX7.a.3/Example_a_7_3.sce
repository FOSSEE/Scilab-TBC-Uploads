//Example_a_7_3 page no:271
clc;
Vmag=10;
Vang=0;
R1=-%i*5;
R2=4-(%i*5);
R1mag=sqrt(real(R1)^2+imag(R1)^2);
R2mag=sqrt(real(R2)^2+imag(R2)^2);
R2ang=atand(imag(R2)/real(R2));
Ztmag=6.24;
Ztang=29.26;
Itmag=Vmag/Ztmag;
Itang=Vang-Ztang;
Inmag=Itmag*R1mag/R2mag;
In=0.466-(%i*1.149);
Zn=4+((3+(%i*5))*(-%i*5)/3);
I2ohm=In*(12.33-(%i*5))/(12.33+2-(%i*5)+(%i*5));
I2ohm_mag=sqrt(real(I2ohm)^2+imag(I2ohm)^2);//current is calculated for calculating power
I2ohm_ang=atand(imag(I2ohm)/real(I2ohm));
P=I2ohm_mag^2*2;
disp(P,"the power in the 2+5j ohm impedence is (in W)");
