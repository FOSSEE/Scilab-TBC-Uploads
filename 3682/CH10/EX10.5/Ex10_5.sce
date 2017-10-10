// Exa 10.5

clc;
clear;

// Given data

// A 16bit dual slope ADC is specified
Va = 4.129; // Input analog Voltage 
Vr= 8; // Maximum integrator output voltage(Reference Voltage)
n=16; // 16 bit counter

// Solution

disp("Referring to Eqn 10.7 on page no. 365 we get,")
// Va = Vr*(N/2^n);
N = round(Va * 2^n / Vr); // Digital count
printf(' The digital count N = %d for which the binary equivalent = \n',N);

// code to convert decimal to binary weuivalent
Nbin = [0000000000000000];
while (N > 0 & n > 0)
    if (modulo(N,2)== 0)
        Nbin(n)=0;
    else
        Nbin(n)=1;
end
n=n-1;
N=int(N/2);
end
disp((Nbin)');
