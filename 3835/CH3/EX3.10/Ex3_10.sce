clear
//
//given
n=2000 //number of turns
flux=0.05*10**-3 //Wb
i=10 //A
lx=(n*flux)/i   //self inductance in X
printf("\n lx= %0.5f  H",lx)
//since coils are identical self inductance in Y=self inductance in x
fluxlinkingX=0.75*0.05*10**-3  //Wb flux linking due to current in coil X
fluxlinkingY=2000*0.05*0.75*10**-3  //Wb flux linkages in coil Y
m=fluxlinkingY/5  //mutual inductance
printf("\n m= %0.5f  H",m)
//The rate of change in current di/dt=2000A/sec --> di/dt=(10-(-10))/0.01
rate=2000
ey=m*rate
printf("\n The induced emf in coil Y= %0.0f  V",ey)
