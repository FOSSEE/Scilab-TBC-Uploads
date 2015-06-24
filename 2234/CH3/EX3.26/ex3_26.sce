clc;
v=10^-5;  //ac voltage
di=10*10^-3;  //discharge rate of current
t=10*10^-3;  //time in sec
ch=(14.14-0.6);  //charge of capacitor
q=ch*v;  //charge
disp(q,"Charge in Coloumb = ");  //displaying result
qt=di*t;  //charge for 10 ms
rc=q-qt;  //remaining charge
disp(qt,"Charge for 10 ms = ");  //displaying result
disp(rc,"Remaining charge in Coloumb = ");  //displaying result
a=(rc/q)*10;  //voltage
disp(a,"Voltage in volt = ");  //displaying result