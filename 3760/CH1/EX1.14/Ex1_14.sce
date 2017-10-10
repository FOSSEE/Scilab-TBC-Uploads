clc;
p=20000; // rated power of transformer
vbh=2500; // base voltage in volts for h. v. side
vbl=250; // base voltage in volts for l. v. side
ibh=p/vbh; // base current in Ampere for h. v. side
zbh=vbh/ibh; // base impedance in ohm
ze=2.6+4.3*%i; // equivalent leakage impedance referred to h. v. side in ohm
zepu=ze/zbh; // per unit value in ohm 
disp('Per unit value of equivalent leakage impedance referred to h. v. side is');
disp(zepu);
k=vbl/vbh; // turn's ratio
zel=ze*k^2; //  equivalent leakage impedance referred to l. v. side in ohm
ibl=p/vbl; //  base current in Ampere for l. v. side
zbl=vbl/ibl; // base impedance for l. v. side
zelpu=zel/zbl; // per unit value in ohm
disp('Per unit value of equivalent leakage impedance referred to l. v. side is');
disp(zelpu);
zepum=abs(zepu); // magnitude of per unit impedance
vhl=zepum*vbh; // total leakage impedace drop on h. v. side
vbl=zepum*vbl; // total leakage impedace drop on l. v. side
printf('Total leakage impedance drop on h. v. side and l. v. side are %f V and %f V respectively\n',vhl,vbl);
Ieh=4.8; // exciting current in Ampere
Iepu=Ieh/ibh; // p u value of exciting current referred to h. v. side
printf('Per unit value of exciting current referred to h. v. side is %f p.u. \n',Iepu);
Iel=Ieh/k;  // exciting current referred to l. v. side 
Ielpu=Iel/ibl; // p u value of exciting current referred to l. v. side
printf('Per unit value of exciting current referred to l. v. side is %f p.u. \n',Ielpu);
