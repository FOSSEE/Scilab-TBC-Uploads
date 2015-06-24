clc;
//page 649
//problem 13.4

//Given bandwidth(B) = 4000Hertz & Noise PSD(n/2) = 10^-9 Watt/Hertz
B = 4000
n = 2*10^-9

//Chanel capacity(C) = B*log2 (1+S/(n*B))

//case 1
//Signal energy(S) =  0.1Joule
S = 0.1

C = B*log2 (1+S/(n*B))

disp('Channel capacity for bandwidth = 4000Hertz, Noise PSD = 10^-9 Watt/Hertz & Signal energy(S) =  0.1Joule is '+string(C)+' bits/sec')

//case 2
//Signal energy(S) =  0.001Joule
S = 0.001

C = B*log2 (1+S/(n*B))

disp('Channel capacity for bandwidth = 4000Hertz, Noise PSD = 10^-9 Watt/Hertz & Signal energy(S) =  0.001Joule is '+string(C)+' bits/sec')

//case 3
//Signal energy(S) =  0.001Joule & incresed bandwidth(B) = 10000Hertz
B = 10000
S = 0.001

C = B*log2 (1+S/(n*B))

disp('Channel capacity for bandwidth = 10000Hertz, Noise PSD = 10^-9 Watt/Hertz & Signal energy(S) =  0.001Joule is '+string(C)+' bits/sec')
