//Example 11.6

clc;clear;


function [N,R]=func(Fs,Fp,Ft,Fti,dp,ds,M)
    dF=(Fs-Fp)/Ft;                                      //Normalised transition bandwidth
    N=round((-20*log10(sqroot(dp*ds))-13)/(14.6*dF));   //FIR Filter length
    R=N*Fti/M;                                          //Number of Multiplications per second
endfunction

Ft=10000;         //Sampling rate of input signal
Fp=150;            //Passband frequency
Fs=180;            //Stopband frequency
dp=0.002;          //Passband ripple
ds=0.001;         //Stopband ripple
M=20;            //Decimation Factor
Fti=Ft;           //Input sampling rate
//Single stage implementation
[N1,R1]=func(Fs,Fp,Ft,Fti,dp,ds,M);

//Two stage implementation
//Stage 1 F(z) with decimation factor 50
Fpf=Fp;            //Passband frequency
Fsf=720;           //Stopband frequency
dpf=0.001;         //Passband ripple
dsf=0.001;         //Stopband ripple
Mf=10;             //Decimation Factor
Fti=Ft;            //Input sampling rate
[N2f,R2f]=func(Fsf,Fpf,Ft,Fti,dpf,dsf,Mf);

//Stage 2 G(z) with decimation factor 2
Fpg=10*Fp;         //Passband frequency
Fsg=10*Fs;         //Stopband frequency
dpg=0.001;         //Passband ripple
dsg=0.001;         //Stopband ripple
Mg=2;              //Decimation Factor
Fti=Ft/10;         //Input sampling rate
[N2g,R2g]=func(Fsg,Fpg,Ft,Fti,dpg,dsg,Mg);
N2=N2f+10*N2g+2;    //Total filter length
R2=R2f+R2g;         //Total Number of Multiplications per second

disp(R1,'Number of Multiplications per second =',N1,'FIR filter length =','For Single stage implementation:');
disp('For Two stage implementation:');
disp(R2f,'Number of Multiplications per second =',N2f,'FIR filter length =','For F(z):');
disp(R2g,'Number of Multiplications per second =',N2g,'FIR filter length =','For G(z):');
disp(R2,'Total Number of Multiplications per second =',N2,'Overall FIR filter length =');