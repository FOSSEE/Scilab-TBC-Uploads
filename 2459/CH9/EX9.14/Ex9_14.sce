//chapter9
//example9.14
//page157

rf=0
n=5
Vp=230 // V rms
Rl=100 //ohm

Vs=Vp/n // V rms
Vsm=Vs*2^0.5 // maximum voltage across secondary 
Vm=Vsm/2 // maximum voltage across half secondary winding

Idc=2*Vm/(%pi*Rl)
Vdc=Idc*Rl
PIV=Vsm
efficiency=100*0.812/(1+rf/Rl)

printf("dc output voltage = %.3f V \n",Vdc)
printf("PIV = %.3f V \n",PIV)
printf("efficiency = %.3f percent \n",efficiency)
