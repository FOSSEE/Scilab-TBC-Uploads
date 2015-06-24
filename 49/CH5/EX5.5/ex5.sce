//CHAPTER 5_ Force,Torque and Shaft Power Measurement
//Caption : Torque measurement on rotating shaft
// Example 5// Page 308
Sg=2;
Rg=120;
G=80*10^9   //('enter the sheer modulus of elasticity=:')
D=0.05   //('enter the shaft diameter=:')
dR=0.1   // given
// we have to find the load torque
y=2*dR/(Rg*Sg);
tou_xy=y*G;
j=%pi*D^4;
T=tou_xy*2*j/(D*32);
printf('The load torque is%fd N-m',T)