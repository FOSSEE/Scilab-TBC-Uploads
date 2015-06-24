// Example  1.67

clc;clear;close;

// Given data
format('v',6);
E=60;//in volt
Zrotor=0.8+%i*6;//rotor impedence in ohm/phase
Zstator=4+%i*3;//stator impedence in ohm/phase
S=5;//in %

//calculations
E2=E/sqrt(3);//emf induced/phase in volt
Ztotal=Zstator+Zrotor;//in ohm/phase
//Part (a)
I2=E2/Ztotal;//in Ampere
disp("Part(a) Magnitude is "+string(abs(I2))+" & angle in degree is "+string(atand(imag(I2),real(I2))));
//Part (b)
S=S/100;//slip
R2=real(Zrotor);//in ohm/phase
X2=imag(Zrotor);//in ohm/phase
I2s=S*E2/(R2+S*%i*X2);//in ampere
disp("Part(b) Magnitude is "+string(abs(I2s))+" & angle in degree is "+string(atand(imag(I2s),real(I2s))));
//Answer of part (b) is wrong in the book.
