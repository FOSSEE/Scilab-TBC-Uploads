//Finding the Harmonic input current of a DC converter
//Example 5.9(Page No- 213) 
clc
clear
//given data
Ia = 100;//A
f = 350;//Hz
k = 0.50;//duty cycle
Ce = 4500*10^-6;//F
Le = 0.3*10^-3;//H
fo = 1/(2*%pi*sqrt(Ce*Le));
//I_1h(t) = A1*cos(2*pi*f*t) + B1*sin(2*pi*f*t)
A1 = (Ia/%pi)*sin(2*%pi*k);
B1 = (Ia/%pi)*(1-cos(2*%pi*k));

Iph = sqrt(A1^2 + B1^2);//peak magnitude of this current
I_1h = Iph/sqrt(2);
I1s = (I_1h)/(1 + (f/fo)^2);
printf('\n The fundamental component of converter-generated harmonic current in the supply : %.2f A',I1s);
