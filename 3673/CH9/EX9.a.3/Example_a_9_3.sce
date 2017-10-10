//Example_a_9_3 page no:403
clc;
Vl=400;
Vph=400/sqrt(3);
Vrnmag=Vph;
Vrnang=0;
Vynmag=Vph;
Vynang=-120;
Vbnmag=Vph;
Vbnang=-240
Zph=3+(%i*4);
Zmag=sqrt(real(Zph)^2+imag(Zph)^2);
Zang=atand(imag(Zph)/real(Zph));
Irmag=Vrnmag/Zmag;
Irang=Vrnang-Zang;
Iph=Irmag;
Iymag=Vynmag/Zmag;
Iyang=Vynang-Zang;
Ibmag=Vbnmag/Zmag;
Ibang=Vbnang-Zang;
Irreal=Irmag*cosd(Irang);
Irimag=Irmag*sind(Irang);
Ir=Irreal+(%i*Irimag);
Iyreal=Iymag*cosd(Iyang);
Iyimag=Iymag*sind(Iyang);
Iy=Iyreal+(%i*Iyimag);
Ibreal=Ibmag*cosd(Ibang);
Ibimag=Ibmag*sind(Ibang);
Ib=Ibreal+(%i*Ibimag);
cos_pi=0.6;
Pt=sqrt(3)*Vl*Irmag*cos_pi;//Irmag value is rounded off in text book so total power varies slightly with text book
I=Ir+Iy+Ib;//here value of I should be zero but it is not zero because scilab can only produce value more near and value will not be zero the reason is explained in document released by scilab in SCILAB IS NOT NAIVE : page no:3
disp(Iph,"the line current is (in A)");
disp(Irmag,"the magnitude of phase current Ir is (in A)");
disp(Irang,"the angle of phase current Ir is (in degree)");
disp(Iymag,"the magnitude of phase current Iy is (in A)");
disp(Iyang,"the angle of phase current Iy is (in degree)");
disp(Ibmag,"the magnitude of phase current Ib is (in A)");
disp(Ibang,"the angle of phase current Ib is (in degree)");
disp(Pt,"the total power is (in W)");
disp(I,"the phasor sum of the three line current is (in A)");
//Irmag value is rounded off in text book so total power varies slightly with text book
//here value of I should be zero but it is not zero because scilab can only produce value more near and value will not be zero the reason is explained in document released by scilab in SCILAB IS NOT NAIVE : page no:3
