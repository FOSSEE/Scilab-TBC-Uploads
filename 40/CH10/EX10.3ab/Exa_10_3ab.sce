//FIR filter design using windows
//(a)Design of FIR filter to meet following specifications
fp=2;fs=4;Ap=2;As=40;S=20;
Fp=fp/S;Fs=fs/S;
Fc=0.15;
z=%z;
N1=3.21/(Fs-Fp);
N1=ceil(N1)
N2=5.71/(Fs-Fp);
N2=ceil(N2)
n1=-16:16;
n2=-28.5:1:28.5;
hn1=2*Fc*(sinc(2*Fc*n1'));
hn2=2*Fc*(sinc(2*Fc*n2'));
Wn1=0.5+0.5*(cos(2*%pi*n1'/(N1-1)));//Vonhann window
Wn2=0.42+0.5*(cos(2*%pi*n2'/(N2-1)))+0.08*(cos(4*%pi*n2'/(N2-1)));//Blackman window
hwn1=abs(hn1.*Wn1);
hwn2=abs(hn2.*Wn2);
[hwn1F,fr1]=frmag(hwn1,256);
[hwn2F,fr2]=frmag(hwn2,256);
hwn1F1=20*log10(hwn1F);
hwn2F1=20*log10(hwn2F);
plot2d(fr1,hwn1F1);
plot2d(fr2(1:length(fr2)-2),hwn2F1(1:length(fr2)-2));
xlabel('Digital frequency');
ylabel('Magnitude [dB]');
title('Low pass filter using vonhann and Blackmann windows Fc=0.15,vonhann N=33,Blackman N=58');
//(b)Minimum length design
Fcv=0.1313;
Fcb=0.1278;
Nv=23;Nb=29;
nv=-11:11;
nb=-14:14;
hnv=2*Fcv*(sinc(2*Fcv*nv'));
hnb=2*Fcb*(sinc(2*Fcb*nb'));
Wnv=0.5+0.5*(cos(2*%pi*nv'/(Nv-1)));//Vonhann window
Wnb=0.42+0.5*(cos(2*%pi*nb'/(Nb-1)))+0.08*(cos(4*%pi*nb'/(Nb-1)));//Blackman window
hwnv=abs(hnv.*Wnv);
hwnb=abs(hnb.*Wnb);
[hwnvF,frv]=frmag(hwnv,256);
[hwnbF,frb]=frmag(hwnb,256);
hwnvF=20*log10(hwnvF);
hwnbF=20*log10(hwnbF);
b=gca();
xset('window',2);
plot(frv,hwnvF);
plot(frb,hwnbF);
xlabel('Digital frequency');
ylabel('Magnitude [dB]');
title('Vonhann Fc=0.1313,Minimum N=23,Blackmann Fc=0.1278,Minimum N=29');