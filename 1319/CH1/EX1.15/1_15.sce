//Determine the current in parallel branches and supply current

clc;
clear;

Xl=%i*100; // Inductance
R=10; // Resistance
V=10;
Xco=-%i*100;

Q=abs(Xl)/R;

Z0=Q*abs(Xco);
I0=V/Z0;

Ic=V/Xco;
Il=V/Xl;

Pi=V*I0; // Power Input

Pc=(I0^2)*10; // Copper Loss

// Frequency reduced to fo/2

Xl1=Xl/2; // New Inductive reactance at half the initial frequency
Xco1=Xco*2; // New Capacitative reactance at half the initial frequency

Z1=R+Xl1; // Net impedance of the branch containing Resistance and inductor

Znet= Z1*Xco1/(Xco1+Z1); // Net Impedance of the circuit

I1=V/Znet; // Net Current for reduced frequency

ti1=atand(imag(I1)/real(I1)); // Phase Angle

// Frequncy increased to 2fo

Xl2=2*Xl;// New Inductive reactance at double the initial frequency
Xco2=Xco/2;// New Capacitative reactance at double the initial frequency
Z2=R+Xl2;// Net impedance of the branch containing resistance and inductor

Zt=Z2*Xco2/(Z2+Xco2);// Net Impedance of the circuit

I2=V/Zt; // Net Current

ti2=atand(imag(I2)/real(I2));

printf('a)  The Current flowing in the inductor =')
disp('mA',Il*1000)
printf('    The current flowing in the capacitor =')
disp('mA',Ic*1000)
printf('    The supply current = %g mA\n \n',I0*1000)
printf('b)  The current for half the intial frequency = %g/_%g mA\n',abs(I1)*1000,ti1)
printf('    The current for double the intial frequency = %g/_%g mA\n',abs(I2)*1000,ti2)

