//ex3.12   find the electric field and its direction just above the surface.

theta=60;           //degree
Et1=10*cosd(theta);
En1=5*sind(theta);
Et2=Et1;
En2=4*En1;
E2=sqrt(Et2^2+En2^2);
angle=atand(En2/Et2);
disp('the electric field is = '+string(E2)+' V/m','angle above the surface is = '+string(angle)+' degree');