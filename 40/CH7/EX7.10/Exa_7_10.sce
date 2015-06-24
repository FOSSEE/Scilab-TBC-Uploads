//ADC considerations
//(a)Aperture time TA
B=12;
fo=15000;//band limited frquency
TAm=(1/((2^B)))/(%pi*fo);
TAm=TAm*10^9
//Hence TA must satisfy TA<=TAm nano sec
//(b)conversion time of quantizer
TA=4*10^-9;
TH=10*10^-6;//hold time
S=30*10^3;
TCm=1/S-TA-TH;
TCm=TCm*10^6
//Hence TC must satisfy TC<=TCm micro sec
//(c)Holding capacitance C
Vo=10;
TH=10*10^-6;
B=12;
R=10^6;//input resistance
delv=Vo/(2^(B+1));
Cm=(Vo*TH)/(R*delv);
Cm=Cm*10^9
//Hence C must satisfy C>=Cm nano farad