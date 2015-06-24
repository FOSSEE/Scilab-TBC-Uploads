//Ex7_7
clc
AV=50000
disp("AV="+string(AV)) // Voltage gain 
Ri=50*10^(6)
disp("Ri= "+string(Ri)+ " ohm")  //Input resistance of OP-AMP
R0=1*10^(3)
disp("R0= "+string(R0)+ " ohm")  //Output resistance
AVf=10
disp("AVf="+string(AVf)) // Overall Voltage gain 
RSf=50*10^(3)
disp("RSf= "+string(RSf)+ " ohm")  //Source resistance
R1=RSf
RF=AVf*(R1)
disp("RF=AVf*(R1)= "+string(RF)+ " ohm")  //Feedback resistance
VS=30
disp("VS= "+string(VS)+" volts") // Peak-peak output swing voltage
Vomax=0.5*(VS)
disp("Vomax=0.5*(VS)= -"+string(Vomax)+", +"+string(Vomax)+" volts") // Maximum output voltage swing at negative and positive polarities respectively
Vsmax=Vomax/AVf
disp("Vsmax=Vomax/AVf= -"+string(Vsmax)+", +"+string(Vsmax)+" volts") // Maximum output voltage without overload clipping at both polarities


//for overall voltage gain author has used two notations 'Avf' and 'Af' ... but I am working with 'Avf' only
