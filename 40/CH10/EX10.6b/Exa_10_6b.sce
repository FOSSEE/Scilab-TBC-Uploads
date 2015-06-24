//optimal Fir band pass filter design
fp=8;fs=16;
Ap=1;As=50;S=48;
Fp=fp/S;Fs=fs/S;
FT=0.1;FC=0.25
//calculation of filter length
delp=(10^(Ap/20)-1)/(10^(Ap/20)+1);
dels=10^(-As/20);
del=min(delp,dels);
N=1+((-10*log10(del*del)-13)/(14.6*FT));
N1=19;
[hn]=eqfir(N1,[0 1/6;1/3 0.5],[1 0],[1 1]);
[HF,fr]=frmag(hn,200);
Hf=20*log10(HF);
a=gca();
plot(fr,Hf);
xlabel('Digital frequency F');
ylabel('Magnitude in dB');
xtitle('optimal Half band LPF N=17');