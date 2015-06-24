//Chapter-11 example 49
//=============================================================================
clc;
clear;
//Given data
f     = 6*10^9;        // Radar operating freq. in Hz
Vo    = 3*10^8;        // vel of EM wave m/s;
PRF   = 1000;          // pulse repetitive freq. in Hz
PW    = 1.2*10^-6;     // Pulse width in sec
DC    = 10^-3;         // Duty Cycle
Smin  = 5*10^-12;      // min. detectable signal
R     = 60*10^3;       // Max. Range in m
G     = 4000;           // power gain of antenna
Ae    = 1              // effective area in m^2
RCS   = 2              // Radar cross sec. in m^2
//Calculations

lamda   = Vo/f;            // Wavelength in m
PRT     = PW/DC;           // pulse repetitive time
PRF     = 1/PRT;           // Pulse repetitive freq.
Pt      = ((Smin*(4*%pi*R*R)^2))/(Ae*G*RCS);  //Peak power
Pav     = Pt*DC;           // average power

Runamb  = Vo/(2*PRF);      // Distance of the Target
RR      = (Vo*PW)/2;       // Range Resolution
//output

mprintf('Operating Wavelength = %g m\n PRT = %3.2f ms\n PRF = %3.1f Hz\n Peak power = %3.3f KW\n Average power = %3.3f Watts\n unambiguous range = %g Km\n Range Resolution = %g m',lamda,PRT*1000,PRF,Pt/1000,Pav,Runamb/1000,RR );
mprintf('\n Note: Calculation error in textbook for Pt and Pav');

//==============================================================================
