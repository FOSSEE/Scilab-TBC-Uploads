//Ex 9.5
clc;
N=21;
U=11;
for n=-10+U:1:10+U
if n==11 
hd(n)=0.25;      
else
hd(n)=(sin(%pi*(n-U)/4))/(%pi*(n-U));
end
end
[hzm ,fr ]= frmag (hd ,256) ;
hzm_dB = 20* log10 (hzm)./ max ( hzm );
plot (2*fr , hzm_dB );
xlabel ('Frequency');
ylabel ('Magnitude');
title('Plot of Amplitude of LPF')