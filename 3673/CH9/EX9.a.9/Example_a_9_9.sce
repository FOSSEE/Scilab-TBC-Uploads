//Example_a_9_9 page no:408
clc;
V=400;
Irmag=10;
Irang=-36.88;
Iymag=5;
Iyang=45.57;
Ibmag=7;
Ibang=0;
pf1=0.8;
pf2=0.7;
pf3=1;
Irreal=Irmag*cosd(Irang);
Irimag=Irmag*sind(Irang);
Ir=Irreal+(%i*Irimag);
Iyreal=Iymag*cosd(Iyang);
Iyimag=Iymag*sind(Iyang);
Iy=Iyreal+(%i*Iyimag);
Ibreal=Ibmag*cosd(Ibang);
Ibimag=Ibmag*sind(Ibang);
Ib=Ibreal+(%i*Ibimag);
I1=Ir-Ib;
I2=Iy-Ir;
I3=Ib-Iy;
I1mag=sqrt(real(I1)^2+imag(I1)^2);
I1ang=atand(imag(I1)/real(I1));
I2mag=sqrt(real(I2)^2+imag(I2)^2);
I2ang=atand(imag(I2)/real(I2));
I2ang=I2ang+180;//converting the angle to positive
I3mag=sqrt(real(I3)^2+imag(I3)^2);
I3ang=atand(imag(I3)/real(I3));
Pry=V*Irmag*pf1;
Pyb=V*Iymag*pf2;
Pby=V*Ibmag*pf3;
Pt=Pry+Pyb+Pby;
disp(I1mag,"the magnitude of current I1 is (in A)");
disp(I1ang,"the angle of current I1 is (in degree)");
disp(I2mag,"the magnitude of current I2 is (in A)");
disp(I2ang,"the angle of current I2 is (in degree)");//I2 angle is wrongly calculated in text book
disp(I3mag,"the magnitude of current I3 is (in A)");
disp(I3ang,"the angle of current I3 is (in degree)");
disp(Pt,"the total power consumed by the load is (in W)");
//I2 angle is wrongly calculated in text book, correct calculation is done here
