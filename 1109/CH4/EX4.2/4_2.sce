clear;
clc
l=225;Zo=401-(%i*29);P=(0.148+(%i*2.06))*(10^-3);
Zs=Zo*sinh(P*l);
A=real(Zs);
B=imag(Zs);
printf("-Series branch of the equivalent network will have the impedance = %f + j(%f) ohms\n",round(A),round(B));
Zsh=Zo*coth(P*l/2);
C=real(Zsh);
D=imag(Zsh);
printf("-Shunt branch of the equivalent network will have the impedanc = j(%f) ohms",round(D))
