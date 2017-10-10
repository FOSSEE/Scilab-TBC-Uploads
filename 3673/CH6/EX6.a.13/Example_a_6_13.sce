//Example_a_6_13 page no:242
clc;
Vmag=14.705;
Vang=157.5;
Vreal=Vmag*cosd(Vang);
Vimag=Vang*sind(Vang);
V=Vreal+(Vimag*%i);
V1real=100;
V1imag=0;
V1=V1real+(V1imag*%i);
I=(V-V1)/2;
Imag=sqrt(real(I)^2+imag(I)^2);
Iang=atand(imag(I)/real(I));
P=V1real*Imag*cosd(Iang)/2;
P=P/1000;//converting to killo watt
disp(P,"the power delivered by the source is (in kW)");
