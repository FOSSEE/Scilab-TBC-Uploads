//x[n] = 1+sin(4*%pi/N)n+cos(10*%pi/N)n
clear;
close;
clc;
N = 21;
n = 0:0.01:N;
Wo = 2*%pi/N;
xn =ones(1,length(n))+sin(2*Wo*n)+cos(5*Wo*n);
for k =0:N-2
  C(k+1,:) = exp(-sqrt(-1)*Wo*n.*k);
  a(k+1) = xn*C(k+1,:)'/length(n);
  if(abs(a(k+1))<=0.1) 
    a(k+1)=0;
  end
end
a =a';
a_conj =conj(a);
ak = [a_conj($:-1:1),a(2:$)];
Mag_ak = abs(ak);
for i = 1:length(a)
  Phase_ak(i) = atan(imag(ak(i))/(real(ak(i))+0.0001));
end
Phase_ak = Phase_ak'
Phase_ak = [Phase_ak(1:$-1) -Phase_ak($:-1:1)];
k = -(N-2):(N-2);
subplot(2,1,1)
plot2d3('gnn',k,Mag_ak,5)
xtitle('abs(ak)','k','ak')
subplot(2,1,2)
plot2d3('gnn',k,Phase_ak,5) 
xtitle('phase(ak)','k','ak')
