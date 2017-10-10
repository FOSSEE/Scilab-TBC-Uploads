clc

horsepower=2.5  //rating of induction motor in horsepower at half load
Vl=230 //terminal voltage of motor in volts
Il=7   //load current of motor in amperes
pf=0.8 //power factor of the machine
Pin=sqrt(3)*Vl*Il*pf //input power in watts
mprintf("Pin=%f W\n",Pin)//The answer may vary due to roundoff error
Whp=746 //watts per hp
Pout=horsepower*Whp //output power in watts
mprintf("Pout=% f W\n",Pout)
mprintf("η=%f\n",Pout/Pin)//The answer may vary due to roundoff error //efficiency of the machine
mprintf("Losses=Pin-Pout=%f W\n",Pin-Pout)//The answer may vary due to roundoff error //losses in the machine in watts







