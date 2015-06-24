
//To Detemine Minimum Starting Current drawn from the supply
//Page 207
clc;
clear;

TR=0.5; //Torque Ratio, Tst:Tl
V=400; //Supply Voltage
Pr=30*735; //Power Rating 
N=500; //Rated Speed
eff=0.85; //Efficieny
pf=0.88; //Power Factor
Is=150; //Short Circuit Current
s=5/100; //Full load Slip
pfs=0.25; //Power Factor of the Short Cicuit Current
Il=Pr/(sqrt(3)*V*eff*pf); //Full Load Current

//Case 1
x=poly(0,'x'); //Tapping Percent
X=TR-(((Is/Il)^2)*(x^2)*s); //Polynomial to determine the 'x'
x=roots(X)
x=x(1); //Taking the Postive Root
Ist1=Is*x*x; //Starting Current numerical Value

//Case 2
Ist2=sqrt((TR*(Il^2)/s)); //Starting Current for Full Voltage

Z1=V/(sqrt(3)*Ist2); //impedance for the starting current at full voltage
Z2=(V/(sqrt(3)*Is))*exp((%i*%pi*acosd(pfs))/180); //Phasor form of the Impedance of for the short cicuit current

R=sqrt((Z1^2)-(imag(Z2)^2));
Rs=R-real(Z2); //Resistance to be connected the stator circuit

printf('i) The Tapping of the Transformer is %g percent and the starting Current is %g A\n',(x*100),Ist1)
printf('ii) The Starting Current is %g A and the Resistance to be added to the stator circuit is %g ohm\n',Ist2,Rs)

