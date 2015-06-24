clear ;
clc ;
close ;
//Chapter1
//Example1.11(1), page no 39
//Given
T = 10; //time Tau
Tg = -T/2 :0.1: T/2; // time period for given Gate Function -tau/2 to tau/2
G_t0 = 1; //Magnitude of Gate Function (A)
G_t = G_t0* ones (1, length (Tg));// Gate function G(t)
f = -%pi: %pi / length (Tg): %pi ;
Dw = 0.1;
F_jW =G_t*exp(sqrt(-1)*Tg'*f)*Dw;// fourier Transform of the gate function
F_jW = real(F_jW);
// Plotting the Fourier Transform of G(t)
figure
subplot (2 ,1 ,1)
a=gca();
a.y_location ="origin";
a.x_location ="origin";
plot2d(Tg,G_t,2);
xtitle( ' Given Function (Gate Function) G(t) ' )
subplot(2 ,1 ,2)
a= gca();
a.y_location ="origin";
a.x_location ="origin";
plot2d(f,F_jW,5);
xlabel('Frequency in Radians/Seconds ');
title('Continuous time Fourier Transform X(jW)' )
xtitle ( 'Fourier Transform of G(t)=  F(jW) ' )
mprintf('F(w)= A*t*Sa(w*t/2) ')
