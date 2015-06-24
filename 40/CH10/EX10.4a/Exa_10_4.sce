//Half band FIR Filter Design
//(a)lowpass Half band Filter
s=%s;z=%z;
fp=8;fs=16;Ap=1;As=50;
S=2*(fs+fp);
Fp=fp/S;Fs=fs/S;Fc=0.25;
delp=(10^(Ap/20)-1)/(10^(Ap/20)+1);
dels=10^(-As/20);
del=min(delp,dels);
As0=-20*log10(del)
N1=(As0-7.95)/(14.36*(Fs-Fp))+1;
N1=int(N1)+1;
B=0.0351*(As0-8.7)
[hn1]=eqfir(19,[0 1/6;1/3 0.5],[1 0],[1 1]);
[HLPF1,fr1]=frmag(hn1,512);
HLPf1=20*log10(HLPF1);
a=gca();
plot2d(fr1,HLPf1);
xlabel('Digital Frequency');
ylabel('Magnitude in dB');
xtitle('Kaiser half band LPF:B=1.44;Fc=0.25');
[hn2]=eqfir(21,[0 1/6;1/3 0.5],[1 0],[1 1]);
[HLPF2,fr2]=frmag(hn2,512);
HLPf2=20*log10(HLPF2);
xset('window',1);
plot2d(fr2,HLPf2);
xlabel('Digital Frequency');
ylabel('Magnitude in dB');
xtitle('Hamming half-band LPF:N=21;Fc=0.25');
