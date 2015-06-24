// Exa 8.12
clc;
clear;
close;
//given data
// For the word 100100
N=6;// Number of bits
a5= 1;// Value of bits
a4= 0;// Value of bits
a3= 0;// Value of bits
a2= 1;// Value of bits
a1= 0;// Value of bits
a0= 0;// Value of bits
Vo= 3.6;// in volt
// Formula Vo= (2^(N-1)*a5 + 2^(N-2)*a4 + 2^(N-3)*a3 + 2^(N-4)*a2 + 2^(N-5)*a1 + 2^(N-6)*a0 ) * K
K= Vo/(2^(N-1)*a5 + 2^(N-2)*a4 + 2^(N-3)*a3 + 2^(N-4)*a2 + 2^(N-5)*a1 + 2^(N-6)*a0 );
// For the word 110011
N=6;// Number of bits
a5= 1;// Value of bits
a4= 1;// Value of bits
a3= 0;// Value of bits
a2= 0;// Value of bits
a1= 1;// Value of bits
a0= 1;// Value of bits
Vo= (2^(N-1)*a5 + 2^(N-2)*a4 + 2^(N-3)*a3 + 2^(N-4)*a2 + 2^(N-5)*a1 + 2^(N-6)*a0 ) * K;// in volt
disp(Vo,"The value of Vo for the word 110011 in volt")

// Part(ii)
// For the word 1010
N=4;// Number of bits
a3= 1;// Value of bits
a2= 0;// Value of bits
a1= 1;// Value of bits
a0= 0;// Value of bits
VR= 6;// in volt
Vo= VR/2^N*( 2^(N-1)*a3 + 2^(N-2)*a2 + 2^(N-3)*a1 + 2^(N-4)*a0  );
disp(Vo,"Value of output voltage in volt")

