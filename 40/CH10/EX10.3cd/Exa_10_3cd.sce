//Design of high pass FIR filter with specifications
//fp=4kHZ;fs=2kHZ;Ap=2dB;As=40dB
fp=2;fs=4;Ap=2;As=40;S=20;
Fp=fp/S;Fs=fs/S;
Ft=0.1;
Fc=0.15
N1=3.47/(Fs-Fp);//hamming
N1=int(N1)+1
N2=5.71/(Fs-Fp);//blackman
N2=int(N2)+1
[hn1]=eqfir(N1,[0 0.1;0.2 0.5],[0 1],[1 1]);
[HF1,fr1]=frmag(hn1,512);
Hf1=20*log10(HF1);
[hn2]=eqfir(58,[0 0.1;0.2 0.43],[0 1],[1 1]);
[HF2,fr2]=frmag(hn2,512);
Hf2=20*log10(HF2);
a=gca();
plot2d(fr1,Hf1,rect=[0 -120 0.5 4]);
plot2d(fr2(1:length(fr2)-5),Hf2(1:length(fr2)-5),rect=[0 -120 0.5 4]);
xlabel('Digital Frequency F');
ylabel('Magnitude [dB]');
xtitle('High pass filter using Hamming and Blackmann windows LPP Fc=0.35');
//Minimum Length Design
[hn3]=eqfir(22,[0 0.1;0.2 0.43],[0 1],[1 1]);
[HF3,fr3]=frmag(hn3,512);
Hf3=20*log10(HF3);
[hn4]=eqfir(29,[0 0.1;0.2 0.5],[0 1],[1 1]);
[HF4,fr4]=frmag(hn4,512);
Hf4=20*log10(HF4);
xset('window',1);
a=gca();
plot2d(fr3(1:length(fr3)-5),Hf3(1:length(fr3)-5),rect=[0 -120 0.5 4]);
plot2d(fr4,Hf4,rect=[0 -120 0.5 4]);
xlabel('Digital Frequency F');
ylabel('Magnitude [dB]');
xtitle('Hamming LPP Fc=0.3293 N=22;Blackmann LPP Fc=0.3277 N=29');

