clc;
// fields test on two similar machine gave following test
iam=60; // motor armature current
vam=500; // voltage across armature
vfm=40; // voltage across field
vt=450; // terminal voltage for generator
io=46; // output current for generator
vfg=40; // voltage across field
ra=0.25; // armture resistance
pi=(vam+vfm+vfg)*iam; // power input to whole set
pog=vt*io; // generator output
tl=pi-pog; // total loss in whole set 
poh=iam^2*ra+iam*(vfm+vfg)+io^2*ra; // total ohmic losses
wo=(tl-poh)/2; // no load roational losses for each machines
pim=(vam+vfm)*iam; // motor power input
plm=iam^2*ra+iam*vfm+wo; // total motor loss
nm=(1-(plm/pim))*100; 
printf('Motor efficiency is %f percent\n',nm);
plg=io^2*ra+iam*vfm+wo; // total motor loss
pgm=pog+plg; // generator input
ng=(1-(plg/pgm))*100;
printf('Generator efficiency is %f percent',ng);
