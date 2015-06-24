clc
clear

//input
vp=660;//primary voltage in volts
vs=1100;//secondary voltage in volts
f=50;//supply frequency in hertz
kva=10;//kVA rating of the transformer 
t1=550;//number of primary turns

//calculations
pv=vp/t1;//primary volts per turn
t2=vs/pv;//number of secondary turns
inpi=(kva*1000)/vp;//input current in amperes
is=(kva*1000)/vs;//secondary current in amperes

//output
mprintf('the number of secondary turns is %3.0f and the respective primary and secondary currents are %3.1fA and %3.1fA',t2,inpi,is)
