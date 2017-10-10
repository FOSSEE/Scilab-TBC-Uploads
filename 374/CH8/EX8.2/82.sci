//chapter 8 example //
clc
clear
//capacitance of photodoide=Cd,load resistance=Rl,maximum bandwidth=B,bandwidth when system is connected to amplifier=B1//
B=10*(10^6);//in Hz//
Cd=5*(10^-12);//in farads//
Rl=1/(2*%pi*B*Cd);
printf("\n load resistance=%f \n",Rl)
Cd1=(5+5)*(10^-12);
B1=1/(2*%pi*Rl*Cd1);
printf("\n Bandwidth after amplifier is connected=%f Hz\n",B1)
