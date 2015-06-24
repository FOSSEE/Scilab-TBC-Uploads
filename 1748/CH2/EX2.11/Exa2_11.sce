//Exa 2.11
clc;
clear;
close;
//Given data : 
R2=0.5;//in ohm
X=4.5;//im ohm
E=50;//line voltage in volt
Eperphase=E/sqrt(3);//in volt
//part (a) : Sliprings are short circuited
Z2=sqrt(R2^2+X^2);//in ohm
I2=Eperphase/Z2;//in Ampere
disp(I2,"Sliprings are short circuited, Rotor current in Ampere : ");
cosfi2=R2/Z2;//unitless
disp(cosfi2,"Power factor : ");
//part (b) : Sliprings are connected 
R2=0.4;//in ohm
Z2=sqrt(R2^2+X^2);//in ohm
I2=Eperphase/Z2;//in Ampere
disp(I2,"Sliprings are short circuited, Rotor current in Ampere : ");
cosfi2=R2/Z2;//unitless
disp(cosfi2,"Power factor : ");
//Note : answer of part (a) I2 is not curate in the book.