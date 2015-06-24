//Half band FIR Filter Design
//(a)band-stop Half band Filter
s=%s;z=%z;
fp1=1;fs1=2;fp2=4;fs2=3;Ap=1;As=50;
S=2*(fs1+fs2);
Fp=0.5*(fs2/S-fs1/S);Fs=0.5*(fp2/S-fp1/S);
Fc=0.5*(Fp+Fs);Fo=0.25;
delp=(10^(Ap/20)-1)/(10^(Ap/20)+1);
dels=10^(-As/20);
del=min(delp,dels);
As0=-20*log10(del)
N1=(As0-7.95)/(14.36*(Fs-Fp))+1;
N1=ceil(N1);
B=0.0351*(As0-8.7)
[hn1]=eqfir(31,[0 0.1;0.2 0.3;0.4 0.5],[1 0 1],[1 1 1]);
[HBSF1,fr1]=frmag(hn1,400);
HBSf1=20*log10(HBSF1);
a=gca();
plot2d(fr1,HBSf1);
xlabel('Digital Frequency');
ylabel('Magnitude in dB');
xtitle('Kaiser half band LPF:B=1.44;Fc=0.25');
[hn2]=eqfir(35,[0 0.1;0.2 0.3;0.4 0.5],[1 0 1],[1 1 1]);
[HF2,fr2]=frmag(hn2,200);
HBSf2=20*log10(HF2);
xset('window',1);
plot2d(fr2,HBSf2);
xlabel('Digital Frequency');
ylabel('Magnitude in dB');
xtitle('Hamming half-band LPF:N=21;Fc=0.25');
