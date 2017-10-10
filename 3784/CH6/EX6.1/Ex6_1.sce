clc
//variable initialization
Vm=415 //input of motor in volt
F1=50 //supply frequency in hrtz
F2=35 //supply frequency in hrtz
F3=10 //supply frequency in hrtz
N=1460 //speed of motor in rpm
P=4 //number of poles 
R1=0.65 //resistance of stator in ohm
R2=0.35 //resistance of rotor in ohm
X1=0.95 //reactance of Motor in ohm
X2=1.43 //reactance of Motor in ohm
Xm=28 //reactance of Motor in ohm



//Solution
V1ph=Vm/sqrt(3)
Ns1=(120*F1)/P
Wsm1=(2*%pi/60)*Ns1
Sm1=R2/sqrt((R1^2)+(X1+X2)^2)//Slip for maximum torque
Nr1=Ns1*(1-Sm1)
Tm1=3*((V1ph)^2)/(2*Wsm1*(R1+sqrt((R1)^2+(X1+X2)^2)))

V2ph=Vm/sqrt(3)
X3=X1*(F2/F1)
X4=X2*(F2/F1)
Sm2=R2/sqrt((R1^2)+(X3+X4)^2)//Slip for maximum torque
Ns2=(120*F2)/P
Wsm2=(2*%pi/60)*Ns2
Nr2=Ns2*(1-Sm2)
Tm2=3*((V2ph*F2/F1)^2)/(2*Wsm2*(R1+sqrt((R1)^2+(X3+X4)^2)))

V3ph=Vm/sqrt(3)
X5=X1*(F3/F1)
X6=X2*(F3/F1)
Sm3=R2/(sqrt((R1^2)+((X5+X6)^2)))//Slip for maximum torque
Ns3=(120*F3)/P
Wsm3=(2*%pi/60)*Ns3
Nr3=Ns3*(1-Sm3)
Tm3=3*((V3ph*F3/F1)^2)/(2*Wsm3*(R1+sqrt((R1)^2+(X5+X6)^2)))
printf('\n\n speed at which maximum torque occurs for 50 Hz=%0.1f rpm\n\n',Nr1)
printf('\n\n maximum torque for 50 Hz=%0.1f N-m\n\n',Tm1)
printf('\n\n speed at which maximum torque occurs for 35 Hz=%0.1f rpm\n\n',Nr2)
printf('\n\n maximum torque for 35 Hz=%0.1f N-m\n\n',Tm2)
printf('\n\n speed at which maximum torque occurs for 10 Hz=%0.1f rpm\n\n',Nr3)
printf('\n\n maximum torque for 10 Hz=%0.1f N-m\n\n',Tm3)

