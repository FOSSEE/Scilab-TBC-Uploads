//optimal Fir band stop filter design
fp1=1;fp2=4;fs1=2;fs2=3;
Ap=1;As=50;S=10;
Fp1=fp1/S;Fp2=fp2/S;Fs1=fs1/S;Fs2=fs2/S;
FT=0.1;FC=0.25
//calculation of filter length
delp=(10^(Ap/20)-1)/(10^(Ap/20)+1);
dels=10^(-As/20);
N=1+((-10*log10(delp*dels)-13)/(14.6*FT))
N1=21;
[hn]=eqfir(N1,[0 0.1;0.2 0.3;0.4 0.5],[1 0 1],[1 1 1]);
[HF,fr]=frmag(hn,512);
Hf=20*log10(HF);
a=gca();
plot(fr,Hf);
xlabel('Digital frequency F');
ylabel('Magnitude in dB');
xtitle('optimal BSF:N=21;Ap=0.2225;As=56.79dB');