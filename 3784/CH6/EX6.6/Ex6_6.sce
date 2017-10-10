clc
//variable initialization
Vm=400 //input of motor in volt
F=50 //supply frequency in hrtz
N=1500 //speed of motor in rpm
P=6 //number of poles 
R1=2 //resistance of stator in ohm
R2=3 //resistance of rotor in ohm
X1=4 //reactance of Motor in ohm
X2=4 //reactance of Motor in ohm
S=1 //Slip Of Motor

//Solution
Ns=(120*F)/P
Ws=(2*%pi/60)*Ns
Vph=Vm/sqrt(3)
Tst=(3/Ws)*((Vph^2)/((R1+(R2/S))^2+(X1+X2)^2))*R2
Ist=Vph/sqrt((R1+R2)^2+(X1+X2)^2)
printf('\n\n The Starting Torque=%0.1f N-m\n\n',Tst)
printf('\n\n The starting Current=%0.1f Amp\n\n',Ist)
