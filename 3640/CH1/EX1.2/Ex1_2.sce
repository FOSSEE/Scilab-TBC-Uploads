clc

//the below exmaple is an extension of Ex1_1.sce
Vl=230 //terminal voltage of machine in volts
Il=7 //current drawn by machine in amperes
pf=0.8 //power factor of machine
Pin=sqrt(3)*Vl*Il*pf //from Ex1_1 //input power in watts
Losses=365 //in watts
Pout=Pin-Losses //output power in watts
Whp=746 //watts per hp
mprintf("η=1-(Losses/Input)=%f\n",1-(Losses/Pin)) //The answer may vary due to roundoff error //efficiency of the machine
mprintf("Pout=%f W\n",Pout)//The answer may vary due to roundoff error
mprintf("Pout=%fhp",Pout/Whp)//The asnwer may vary due to roundoff error //output power in horsepower




