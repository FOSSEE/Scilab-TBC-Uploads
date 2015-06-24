clc;
//Example 10.4
//Page No 403

disp("Given: For minimum line speed with an 8-bit PCM for speech signal ranging upto 1 V. ");

//solution

v=1;
n=8;


disp("Minimum line speed with an 8-bit PCM is 64Kbps.");

//(a)

r=v/(2^n-1);

disp('V',r,"(a)Resolution = ");

q=r;

disp('V',q,"Therefore, Resolution = quantization, q=");

qe=q/2;

disp('V',qe,"Quantization error = ");

//(b)

disp("(b)Dynamic range DR for 0.001 V resolution ");

dr=20*log10(v/0.01);

disp('db',dr,"DR = ");

disp("Minimum number of bits n required to achieve the dynamic range is given by ");

N=((log(100+1))/(log(2)));

disp(N,"n = ");

c=(N/n)*100;

disp('%',c,"Therefore, coding efficiency = ");



