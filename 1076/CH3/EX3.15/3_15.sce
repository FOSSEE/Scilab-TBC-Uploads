clear;
clc;

Z=complex(180*cosd(75) , 180*sind(75));
Y=complex(1e-3*cosd(90) , 1e-3*sind(90));

g=sqrt(Y*Z);
Zc=sqrt(Z/Y);

Z1=Zc * sinh(g);
Y1=(1/Zc) *1e3*( (cosh(g)-1)/sinh(g));


mprintf("\nZpi= %s", string(round(abs(Z1)*100)/100) +'/_'+ string(round(atand(imag(Z1)/real(Z1))*100)/100) )
mprintf("\nYpi/2= %s *1E-3", string(round(abs(Y1)*10000)/10000) +'/_'+ string(round(atand(imag(Y1)/real(Y1))*10)/10) )

