clc 
//variable initialisation
V=400 //Supply voltage in volts
P=24 //number of poles
f=50 //frequency in Hz
P1=100e+3 //power in Watt
P2=100e+3 //power in Watt
K=1.4 //Turns ratio
R=0.03 //resistance in ohmm
N1=240 //speed in rpm
N2=180 //speed in rpm

//solution
Vp=V/sqrt(3)
Ns=(120*f)/P
s=(Ns-N1)/Ns
w=(2*%pi*N1)/60
T=P1/w
R1=K^(2)*R
X=sqrt((3*Vp^2*R1/(T*2*%pi*Ns*s/60))-((R1/s)^(2)))
s1=(Ns-N2)/Ns
T1=T*(N2/N1)^2
A=(T*2*%pi*Ns*s1/60)/(3*(Vp^2))
R22=poly(0,'R22')
0==(R22^2)*(A/(s1^2))+(A*X^2)-R22//Polynomial equation obtained for R22
R22=0.745//After solving equation value of Resistor
R2=(R22-R1)/K^2
printf('\n\n The Resistance to connect in series=%0.1f ohm\n\n',R2)
