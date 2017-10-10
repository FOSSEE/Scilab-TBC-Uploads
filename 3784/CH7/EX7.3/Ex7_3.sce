clc
//variable initialization
V=440 //voltage in volts
P=6 //number of poles
f=50 //frequency in Hz
R1=2 //resistance in ohm
R2=2 //resistance in ohm
X1=3 //reactance in ohm
X2=4 //reactance in ohm
N1=945 //speed in rpm
N2=800 //speed in rpm

//solution
Ns=(120*f)/P
s=(Ns-N1)/Ns
w=2*%pi*Ns/60
T=(3/w)*((V^(2)*(R2/s))/(((R1+(R2/s))^(2))+(X1+X2)^(2)))
k=T/(1-s)^2//The answer provided in the textbook is wrong
s1=(Ns-N2)/Ns
Tl=k*((1-s1)^(2))//The answer provided in the textbook is wrong
V2=sqrt((Tl*w*(((R1+(R2/s1))^2)+((X1+X2)^2))/((R2/s1)*3)))//The answer provided in the textbook is wrong
I=V2/((R1+(R2/s1))+(%i*(X1+X2)))//The answer provided in the textbook is wrong
Il=sqrt(3)*I//The answer provided in the textbook is wrong
printf('\n\n The Line Current=%0.1f Amp\n\n',Il)
