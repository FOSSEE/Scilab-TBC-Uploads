//Examle12.2  // Determine the following parameter of 8-bit A/D converter a) Normalized step size b) Actual step size  c) Normalized maximum quantization level  d) Actual maximum quantization  e) Normalized peak quantization error  f) Actual peak quantization error  g) Percentage of quantization error
clc;
clear;
close;
N = 8 ;
Vin = 12 ;

//a) Normalized step size of A/D converter
Ns = 2^-N ;
disp('Normalized step size of A/D converter is = '+string(Ns)+ ' '); 

// b) Actual step size of A/D converter
As = Vin*Ns ;
disp('Actual step size of A/D converter is = '+string(As)+ ' ');

// c) Normalized maximum quantization level of A/D converter
Qmax = 1-2^-N ;
disp('Normalized maximum quantization level of A/D converter is = '+string(Qmax)+ ' ');

// d) Actual maximum quantization level of A/D converter
QAmax = Qmax*Vin ;
disp('Actual maximum quantization level of A/D converter is = '+string(QAmax)+ ' ');

// e) Normalized peak quantization error of A/D converter
Qp = 2^-(N+1);
disp('Normalized peak quantization error of A/D converter is = '+string(Qp)+ ' ' );

// f) Actual peak quantization error of A/D converter
Qe = Qp*Vin ;
disp('Actual peak quantization error of A/D converter is = '+string(Qe)+ ' V ');

// g) Percentage of quantization error of A/D converter
%Qp = 2^-(N+1)*100 ;
disp('Percentage of quantization error of A/D converter is = '+string(%Qp)+ ' ') ;
