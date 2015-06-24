//Exa6.7
clc;
clear;
close;
// given :
G=12 // required gain in dB
f=200 // frequency in MHz 
f=200*10^6 // frequency in Hz
c=3*10^8 // speed of light in m/s
lambda=c/f // wavelength in m
La=0.46*lambda // length of driven element in m    (note: in book La is given 0.416*lambda misprint)
Lr=0.475*lambda // length of reflector in m
Ld1=0.44*lambda // length of director1 in m
Ld2=0.44*lambda // length of director2 in m
Ld3=0.43*lambda // length of director3 in m
Ld4=0.40*lambda // length of director4 in m
SL=0.25*lambda // spacing between reflector and driver in m
Sd=0.31*lambda // spacing director and driving element in m
d=0.01*lambda // diameter of elements in m
l=1.5*lambda // length of array in m
disp(La,"length of driven element in m:")
disp(Lr,"length of reflector in m:")
disp(Ld1,"length of director1 in m:")
disp(Ld2,"length of director2 in m:")
disp(Ld3,"length of director3 in m:")
disp(Ld4,"length of director4 in m:")
disp(SL,"spacing between reflector and driver in m:")
disp(Sd,"spacing director and driving element in m:")
disp(d,"diameter of elements in m:")
disp(l,"length of array in m:")
