clc
//Chapter6
//Ex_6
//Given
e=1.6*10^-19 // in coulombs
Nd=10^16 //in cm^-3
Ebr=4*10^5//in V/cm
epsilono=8.85*10^-12*10^-2 //in F/cm
epsilonr=11.9 
epsilon=epsilono*epsilonr
Vbr=epsilon*Ebr^2/(2*e*Nd)
disp(Vbr,"Reverse break down voltage of the Si diode in Volts is")
//part(b)
Nd=10^17 //in cm^-3
Ebr=6*10^5//in V/cm
Vbr=epsilon*Ebr^2/(2*e*Nd)
disp(Vbr,"Reverse break down voltage in Volts when phosphorous doping is incresed to 10^17 cm^-3 is")
