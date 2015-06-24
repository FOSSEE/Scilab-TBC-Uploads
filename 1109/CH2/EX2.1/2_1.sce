clc;
Zoc=900*exp(%i*(-%pi/(180/30)));Zsc=400*exp(%i*(-%pi/(180/10)));f=1.6*(10^3);
Zo=sqrt(Zoc*Zsc);
A=real(Zo);
B=imag(Zo);
printf("Zo = %f /_ %f ohms",abs(Zo),atan(B,A)*180/%pi);
