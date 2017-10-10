clc;
E1=440; // primary supply voltage
E2=380; // voltage at which load at secondary terminal is being supplied
l1=40000; // power rating of load in watts
pf=0.8; // lagging power factor 
I2=l1/(sqrt(3)*E2*pf);
// per phase KVA input=per phase KVA output
I1=(E2/E1)*I2; 
In=I2-I1; 
printf('Current in primary branch is %f A\n',I1);
printf('current in secondary branch is %f A\n',I2);
printf('current between neutral and tapping points is %f A',In);  
