//Page Number: 292
//Example 5.6
clc;
//Given
f=8D+9; //hz
i=2.5; //A
v=20D+3; //V
bet=1;
amp=10*sqrt(2); //V
rsh=10D+3; //ohm
rsho=30D+3; //ohm
dc=1D-6; //c/m^3
rf=0.5;
e=1.6D-19;
ee=8.854D-12;
m=9.1D-31; //kg

//(i) Induced current
w=2*%pi*f;
wq=rf*sqrt((e*dc)/(m*ee));

//Amplitude of induced current
ic=(i*w*(bet^2)*amp)/(2*v*wq);
disp('A',ic,'Induced current:');

//Induced voltage
icrms=ic/sqrt(2);
v2rms=icrms*rsho;
disp('V',v2rms,'Induced voltage:');

//(ii) Power gain
pg=(((i*w)^2)*(bet^4)*rsh*rsho)/(4*((v*wq)^2));
pgdb=10*log10(pg);
disp('dB',pgdb,'Power gain:');

//(iii) Electronic efficiency
eeta=((icrms^2)*rsho)/(i*v);
disp('%',eeta*100,'Electronic efficiency:');
