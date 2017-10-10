//example 6_20
//find the fourier transform of the periodic signal x[n] = cos(Wo)n
clear;
close;
clc;
N = 5;
n = 0:0.01:N;
Wo = 2*%pi/N;
xn =sin(Wo*n);
for k =0:N-2
  C(k+1,:) = exp(sqrt(-1)*Wo*n.*k);
  a(k+1) = xn*C(k+1,:)'/length(n);
  if(abs(a(k+1))<=0.1) 
    a(k+1)=0;
  end
end
a =a';
a_conj =conj(a);
ak = [a_conj($:-1:1),a(2:$)];
Mag_ak = abs(ak);
k = -(N-2):(N-2);
plot2d3('gnn',k,Mag_ak,5)
xtitle('abs(ak)','k','ak')
