//Chapter-11 example 63
//=============================================================================
clc;
clear;
//Given data
Pt      = 2*10^6;       //Peak power in Watts
G       = 45;           // antenna gain in dB
f       = 6*10^9;       // operating frequency 
Te      = 290;          // effective temp in kelvin
SNRmin  = 20;           // min SNR in dB
PW      = 0.2*10^-3     // pulse width in sec
F       = 3;            // Noise Figure
B       = 10*10^3;      // bandwidth in KHz
RCS     = 0.1;          // Radar cross section in m^2
K       = 1.38*10^-23;  // boltzman constant
Vo      = 3*10^8;       //vel of Em wave in m/s;

//antilog acalculations
G1     = 10^(45/10);    // antilog conversion of gain
SNR    = 10^(20/10);    // antilog conversion of SNRmin
F1     = 10^(3/10);     // antilog conversion of Noise Figure

lamda  = Vo/f;          //wavelength in m
Rmax   = ((Pt*G1*G1*lamda*lamda*RCS)/((64*%pi*%pi*%pi)*(K*Te*B*F1*SNR)))^0.25;
//pt1    = 10*log10(Pt)
//lamda1 = 10*log10(lamda^2)
//G2     = 2*G
//KTB    = 10*log10(K*Te*B)
//RCS1   = 10*log10(RCS)
//p      = 10*log10((4*%pi)^3)
//R4max  = [pt1+G1+lamda1+RCS1-p-KTB-F-SNRmin];

//Output
mprintf('Maximum Range of the Radar is %3.2f Km',Rmax/100);
mprintf('\n Note: Calculation error i Textbook in multiplying K*Te*B');
