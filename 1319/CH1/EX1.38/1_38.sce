// Determine the instantaneous energy stored in the capacitor and inductor

clc;
clear;

Vc=20*sqrt(2);
C=2; // Capacitor
L=1; // Inductor
w=poly(0,'w');

// Impedances in order from let to right (as a function of w)
R1=%i*w;
R2=1/(2*%i*w); // Top
R3=1;// Bottom

Rp=R2*R3/(R2+R3); // Effective resistance of the parallel path

Reff=R1+Rp; // Effective resistance

Reff(2)=Reff(2)*conj(Reff(3));
Reff(3)=Reff(3)*conj(Reff(3));

R=imag(Reff(2))/Reff(3); // Imaginary part of the above equation

//From the above equation we get five roots, three are zero and we take the positive value
w=roots(R(2));
w=abs(w(2)); // Numerical Value

// Impedances in order from let to right (Numerical Value)
R1=%i*w;
R2=1/(2*%i*w); // Top
R3=1;// Bottom

Vcrms=Vc/sqrt(2);

// Taking Vc as reference

Ic=Vcrms/R2; // Current through Capacitor
Ir=Vcrms/R3; // Current through Resistor

Il=Ic+Ir; // Rms value of Current through Inductor
tl=atand(imag(Il)/real(Il)); // Phase angle of Inductor Current

Ilmax=abs(Il)*sqrt(2); // Maximum Current

Eins=C*(Vc^2)/2; // Magnitude of Instaneous energy stored

Ein=L*(abs(Ilmax)^2)/2; // Energy through the inductor
Er=(Ir^2)*R3; // Loss in the resistor

Q0= w*Ein*(1+(1/sqrt(2)))/Er; // Q of the circuit

printf('a)  Instaneous Energy Stored in Capacitor = %g (sin(%gt)^2) \n',Eins,w)
printf('    Instaneous Energy Stored in Inductor = %g (sin( %gt + %g)^2) \n',Ein,w,tl)
printf('b)  Q of the circuit = %g \n',Q0)

