//Chapter-11 example 55
//=============================================================================
clc;
clear;
//input data
Pav  = 200;//average power in watts
PRF  = 1000;//pulse repetitive frequency in Hz
PW   = 1*10^-6;//pulse width in sec
Pmin = 1*10^-12;//minimum receivable power
Ac   = 10;//area of capture in m^s
RCS  = 2;//radar cross sectional area in m^2
Vo   = 3*10^8;//vel of Em wave in m/s;
lamda = 0.1;//wavelength in cms

//calculations
F    = Vo/lamda;//operating frequency in hz
Pt   = Pav/(PRF*PW);

Rmax = ((Pt*Ac*Ac*RCS)/(4*%pi*lamda*lamda*Pmin))^0.25;

//output
mprintf('Operating frequency is %g Ghz\n Radar peak power is %g KW\n Maximum Radar range of the Radar system is %g Km\n',F/10^9,Pt/1000,Rmax/1000);

//==============end of the program=============================================
