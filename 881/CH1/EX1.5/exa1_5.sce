clc;
//Example 1.5
//Page no 9



pin=0.1*(10^-3);
ap1=100;
ap2=40;
ap3=0.25;

//Solution

//(a)

disp("(a)The input power in dBm ");

Pin=10*log10(pin/0.001);

disp('dBm',Pin,"The input power in dBm is, ");

//(b)

disp("(b)The output power is simply the input power multiplied by the three power gains: ");

Pout=(pin)*ap1*ap2*ap3;

Pout1=10*log10(Pout/0.001);

disp('dBm',Pout1,'W',Pout,"The output power in watts and dBm is,");

//(c)

disp("(c)The decibel value for the three gains are determined by substituting into equation 1-3 (Pgno 4)");

Ap1=10*log10(ap1);

disp('dB',Ap1,"Ap1 = ");

Ap2=10*log10(ap2);

disp('dB',Ap2,"Ap2 = ");

Ap3=10*log10(ap3);

disp('dB',Ap3,"Ap3 = ");

//(d)

disp("(d)The overall power gain in dB (Apr) can be determined by simply adding the individual dB power gains, ");

Apr=Ap1+Ap2+Ap3;

disp('dB',Apr,"Apr = ");

disp("The output power in dBm is the input power in dBm plus the sum of the gains of the three stages: ");

Pout2=Pin+Apr;

disp('dBm',Pout2,"Pout = ");
