clc
Pout=24000;//rated output power in watts
Et=250;//rated terminal voltage
Ra=0.1;//armature resistance
N=1600;//speed in rpm
//Ea(terminal voltage)= k*(N*phi),where k is constant & phi is flux per pole
//At no load, 260=k*1600*phi ....(1)
Ia=Pout/Et;
//if the generated voltage under rated load is Ea1,then
//Ea=k*1500*phi ....(2)
//From equation (1)&(2), (Ea1/260)=((1500*phi)/(1600*phi))
Ea1=(1500*260)/1600;
Vt=Ea1-Ia*Ra//terminal voltage at rated load
printf('The terminal voltage of generator under given conditions is %f V.',Vt) 
