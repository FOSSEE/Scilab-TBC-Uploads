//Faults and Protection//
//Example 16.3//
P=100;//input power in KVA//
Xt=0.04;//limiting ac reactance value//
Fov=2;//current ovarload factor//
Pc=Xt*P*Fov;//choke power of the converter in KVA//
printf('choke power of the converter=Pc=%fKVA',Pc);