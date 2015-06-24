//Chemical Engineering Thermodynamics
//Chapter 2
//P-V-T Relations

//Example 2.10
clear;
clc;

//Given
yN2 = 1/4;//mole faction of N2 in the mixture
yH2 = 3/4;//mole fraction of H2 in the mixture
V = 5.7;//V is the rate at which mixture enters in m^3 in 1 hour
P = 600;//P is in atm
T = 298;//T is in K
TcN2 = 126;//critical temp of N2 in K
TcH2 = 33.3;//critical temp of H2 in K
TcNh3 = 406.0;//critical temp of NH3 in K
PcN2 = 33.5;//critical pressure of N2 in atm
PcH2 = 12.8;//critical pressure of H2 in atm
PcNH3 = 111.0;//critical pressure of NH3 in atm
R = 0.082;//gas constant

//To calculate the amount of ammonia leaving the reactor and the velocity of gaseous product leaving the reactor
//(i)Calculation of amount of NH3 leaving the reactor
Tcm = (TcN2*yN2)+(TcH2*yH2);//critical temperature of the mixture
Pcm = (PcN2*yN2)+(PcH2*yH2);//critical pressure of the mixture
Trm = T/Tcm;
Prm = P/Pcm;
//From figure A.2.3
Zm = 1.57;//compressibility factor of the mixture
N = (P*V)/(Zm*R*T);//Kg mole of the mixture 
N1 = 0.25*N;//Kg mole of N2 in feed
//N2+3H2 - 2NH3
W = 2*0.15*N1*17;
mprintf('(i)Ammonia formed per hour is %f Kg',W);

//(ii)Calculation of velocity
N1 = 0.25*N-(0.25*N*0.15);//Kg mole of N2 after reactor
N2 = 0.75*N-(0.75*N*0.15);//Kg mole of H2 after reactor
N3 = 0.25*N*2*0.15;//Kg mole of NH3 after reactor
Nt = N1+N2+N3;//total Kg moles after reactor
y1NH3 = N3/Nt;//mole fraction of NH3 after reactor
y1N2 = N1/Nt;//mole fraction of N2 after reactor
y1H2 = N2/Nt;//mole fraction of H2 after reactor
T1cm = (TcN2*y1N2)+(TcH2*y1H2);
P1cm = (PcN2*y1N2)+(PcH2*y1H2);
T1 = 448;//in K
P1 = 550;//in atm
T1rm = T1/T1cm;
P1rm = P1/P1cm;
//From Figure A.2.2
Zm1 = 1.38;
V1 = (Zm1*Nt*R*T1)/P1;
d = 5*(10^-2);//diameter of pipe
v = V1/((%pi/4)*(d^2)*3600);
mprintf('\n (ii)Velocity in pipe is %f m/sec',v);
//end