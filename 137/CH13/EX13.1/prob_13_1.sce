// page no 620
// prob no 13.1
//Determinaion of the transmission bandwidth and the signal power required at the receiver input for i)Binary ii)16-ary ASK iii)16-ary PSK
//given Rb=2.08*10^6,Pb<=10^-6

//i)for BINARY we have to consider Pb=Pe=10^-6=Q(sqrt(2Eb/N)). This yields Eb/N=11.35. 
//SIgnal power is given by Si=Eb*Rb=11.35*N*Rb
clc;
N=2*10^-8;//for binary. Channel noise PSD=10^-8
Rb=2.08*10^6;
Si1=11.35*N*Rb;
disp(+'Watts',Si1,"signal power required at the receiver = ");
Bt1=Rb;// Bandwidth for baseband pulses
disp(+'Hertz',Bt1," Bandwidth is = ");

//ii)for 16-ary ASK we have to consider Pb=10^-6=Pem/log2(16)
// therefore Pem is given as Pem=Pb*log2(16)
Pb=10^-6;
Pem=Pb*log2(16);
//'Pem' is also given as Pem=2(M-1/M)*Q*sqrt(6Eb*log2(16)/(N(M^2-1)))
M=16;// for 16-array ASk
// By using above formula for 'Pem' , we can calculate the value of Eb,which is come out to be equal to 0.499*10^-5;
Eb=0.499*10^-5;// if the M-ary pulse rate is RM =Rb/4 then
RM =Rb/4; 
Si2=Eb*(log2(M))*RM;
disp(+'Watts',Si2,"signal power required at the receiver= ");
Bt2=RM;//transmission bandwith
disp(+'Hertz',Bt2,"Bandwidth is = ");

//iii) for 16-array PSK we have to consider Pem=4*Pb. This is approximately equal to 2*Q(sqrt(2*pi^2*Eb*log2(16))/256*N). This yields 
Eb= 137.8*10^-8;
Si3=Eb*log2(16)*RM;
disp(+'Watts',Si3,"signal power required at the receiver = ");
Bt3=RM;//normally 
//But for PSK, as it is a modulated signal the required bandwidth is 2Bt3.
Bpsk=2*(Bt3);
disp(+'hertz',Bpsk,"Bandwidth is = ");

