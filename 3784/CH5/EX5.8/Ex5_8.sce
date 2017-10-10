clc
//variable initialisation
Vm=400 //input of motor in volt
F=50 //supply frequency in hrtz
P=4 //Number Of Poles
R1=1 //resistance of stator in ohm
R2=0.4 //resistance of rotor in ohm
X1=1 //reactance of Motor in ohm
X2=1 //reactance of Motor in ohm
Xm=50 //reactance of Motor in ohm
Vc=231 //Constant Voltage Source In Volt
I1=28//Current from Constant Current Source in Amp
//Solution
Xe=(X1*Xm)/(X2+Xm)
Sm=R2/(Xe+X2)
Sm1=R2/(X2+Xm)
Ve=(Vc*Xm)/(X1+Xm)
Ws=(4*%pi*F)/(P)
Test=(3/Ws)*(((Ve)^2)/(R2^2+(X2+Xe)^2))*R2
Tem=(3/Ws)*(((Ve)^2)/(2*(X2+Xe)))
Test1=(3/Ws)*(((I1*Xm)^2)/(R2^2+(X2+Xm)^2))*R2
Tem1=(3/Ws)*(((I1*Xm)^2)/(2*(X2+Xm)))
Im=I1*((R2/Sm1)+(%i*X2))/((R2/Sm1)+%i*(X2+Xm))
V1=sqrt(3)*abs(Im)*Xm
printf('\n\n The Slip for maximum torque for Voltage source=%0.1f\n\n',Sm)
printf('\n\n The Slip for maximum torque for current source=%0.1f\n\n',Sm1)
printf('\n\n The Starting Torque for Voltage source=%0.1f N-m\n\n',Test)
printf('\n\n The Maximum Torque for Voltage Source=%0.1f N-m\n\n',Tem)
printf('\n\n The Starting Torque for Current Source=%0.1f N-m\n\n',Test1)
printf('\n\n The Maximum Torque for Current Source=%0.1f N-m\n\n',Tem1)
printf('\n\n The Supply voltage required=%0.1f Volt\n\n',V1)
//The answers vary due to round off error
