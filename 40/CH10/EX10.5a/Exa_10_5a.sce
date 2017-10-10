//For low pass filter design by frequency sampling
z=%z;
N=10;
magHk=[1 1 1 0 0 0 0 0 1 1];
k=[0:7 -1 -2];
fik=-%pi*k'*(N-1)/N;
for i=1:length(fik)
    H1k(i)=magHk(i)*exp(%i*fik(i));
end
H1n=(fft(H1k,1));
H2k=H1k;
H2k(3)=0.5*%e^(-%i*1.8*%pi);
H2k(9)=0.5*%e^(%i*1.8*%pi);
H2n=(fft(H2k,1));
H1Z=0;H2Z=0;
for i=1:length(H1n)
    H1Z=H1Z+H1n(i)*z^(-i); 
end
for i=1:length(H2n)
    H2Z=H2Z+H2n(i)*z^(-i); 
end
F=0:0.01:1;
F1=0:0.1:0.9;
H1F=abs(horner(H1Z,exp(%i*2*%pi*F')));
H2F=abs(horner(H2Z,exp(%i*2*%pi*F')));
a=gca();
plot2d(F1,magHk);
plot2d(F,H2F);
plot2d(F,H1F);
xlabel('Digital Frequency F');
ylabel('magnitude');
xtitle('Low pass filter using frequency sampling');