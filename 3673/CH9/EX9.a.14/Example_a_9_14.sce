//Example_a_9_14 page no:416
clc;
Vrymag=400;
Vryang=0;
Vbrmag=400;
Vbrang=-240;
Vybmag=400;
Zr=-(%i*50);
Zrmag=sqrt(real(Zr)^2+imag(Zr)^2);
Zrang=-90;//there is no real part
Zb=30+(%i*40);
Zbmag=sqrt(real(Zb)^2+imag(Zb)^2);
Zbang=atand(imag(Zb)/real(Zb));
Irmag=Vrymag/Zrmag;
Irang=Vryang-Zrang;
Ibmag=Vbrmag/Zbmag;
Ibang=Vbrang-Zbang;
Irreal=Irmag*cosd(Irang);
Irimag=Irmag*sind(Irang);
Ir=Irreal+(%i*Irimag);
Ibreal=Ibmag*cosd(Ibang);
Ibimag=Ibmag*sind(Ibang);
Ib=Ibreal+(%i*Ibimag);
I1=Ir-Ib;
I1mag=sqrt(real(I1)^2+imag(I1)^2);
pi=71.7;
P=Vrymag*I1mag*cosd(pi);
disp(P,"the wattmeter reading is (in W)");
//the answer varie slightly with text book hence I1 value is rounded off in text book
