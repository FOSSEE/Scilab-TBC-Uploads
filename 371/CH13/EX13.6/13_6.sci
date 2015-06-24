//Choppers and Transportation System Application//
//Example 13.6//
f=200;//chopper frequency in HZ//
T=1000/f;//total time period in ms//
Toff=4;//Blocking period in ms//
Ton=T-Toff;//conduction period in ms//
R1=2;//R1 in ohms//
R2=4;//R2 in ohms//
R=((R1*Ton)+(R1+R2)*Toff)/T;//rotor resistance referred to stator in ohms//
printf('Rotor resistance referred to stator=R=%fohms',R);
V=415;//stator voltage in volts//
s=0.02;//slip of the motor//
MT=V^2*s/R;//motor torque in Syn. Watts//
printf('\nMotor torque=MT=%fSnc. Watts',MT);