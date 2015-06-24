//Fabrication and Thermal characteristics
//Example 3.2
Xa=50;//Ambient temperature//
P20=25;//on state power loss at 20%load in Watts//
P200=350;//on state power loss at 200%load in Watts//
Rjc=0.02;//junction_case thermal resistance//
Rcs=0.05;//case_sink thermal resistance//
Rsa=0.12;//sink_atmosphere thermal resistance at 20% load cycle//
T1=60;//time period for the supply of 200% load//
T=((200^2-20^2)*T1)/(100^2-20^2);//time period of one cycle//
printf('value of time period of one cycle=%fs',T);
Ts=140;//thermal time constant for heat sink//
Xj20=Xa+P20*(Rjc+Rcs+Rsa);//junction temperature//
printf('\nvalue of junction temperature=%fc',Xj20);
P=P200-P20;//power required to cool down from 200%load cycle to 20% load cycle//
printf('\npower required to cool down=%fwatts',P);
Rsa200=((Rsa)*(1-exp(-T1/Ts)))/(1-exp(-T/Ts));//sink_atmosphere thermal resistance at 200% load cycle//
Xj200=Xj20+(P*(Rjc+Rcs+Rsa200));//maximum junction temperature//
printf('\nvalue of maximum junction temperature=%fc',Xj200);
