clc;
E1=430; // supply voltage
k=100000; // VA rating of load
il=k/(sqrt(3)*E1); // load current
v1=380; v2=460; // range in which voltage at feeder end varies
vr=E1-v1; // maximum variation in output side of regulator
P=(sqrt(3)*vr*il)/1000;
printf('KVA rating of induction regulator is %f KVA',P);
