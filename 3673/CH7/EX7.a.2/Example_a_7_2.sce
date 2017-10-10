//Example_a_7_2 page no:270
clc;
Rab=3+(4*%i);
Rabmag=sqrt(real(Rab)^2+imag(Rab)^2);
Rabang=atand(imag(Rab)/real(Rab));
Rbc=%i*4;
Vmag=100;
Vang=-45;
Vreal=Vmag*cosd(Vang);
Vimag=Vmag*sind(Vang);
V=Vreal+(%i*Vimag);
A=[(3+(%i*8)),(-%i*4)
    (-%i*4),(%i*2)];
B=[V,
    0];
X=inv(A)*B;
X1mag=sqrt(real(X(1))^2+imag(X(1))^2);
X1ang=-atand(imag(X(1))/real(X(1)));
X2mag=sqrt(real(X(2))^2+imag(X(2))^2);
X2ang=atand(imag(X(2))/real(X(2)));
//calculating the voltages across ab
Vabmag=Rabmag*X1mag;
Vabang=Rabang+X1ang;
disp(Vabmag,"the magnitude of voltage across ab is (in V)");
disp(Vabang,"the angle of voltage across ab is (in degree)");
//calculating the voltages across bc
Vbc=(X(2)-X(1))*Rbc;
Vbcmag=sqrt(real(Vbc)^2+imag(Vbc)^2);
Vbcang=atand(imag(Vbc)/real(-Vbc));
disp(Vbcmag,"the magnitude of voltage across bc is (in V)");
disp(Vbcang,"the angle of voltage across bc is (in degree)");

