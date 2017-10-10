clc;
// Answer for case c , secondary line voltage is given wrong in book 
k=12; // per phase turns ratio
E1=11000; // supply voltage from feeder line
ip=20; // primary line current
disp('case a:star-delta');
vph=E1/sqrt(3); // primary phase voltage
iph=ip; // phase current on primary
sph=vph/k; // secondary phase voltage
vls=sph; 
printf('Line voltage on secondary is %f v\n',vls);
isph=k*iph; // phase current on secondary
isl=sqrt(3)*isph; 
printf('line current on secondary is %f A\n',isl);
Kv=(3*sph*isph)/1000; 
printf('Output KVA is %f KVA\n',Kv); 
disp('case b:delta-star');
vph=E1; // primary phase voltage
iph=ip/sqrt(3); // phase current on primary
sph=vph/k; // secondary phase voltage
vls=sqrt(3)*sph; 
printf('Line voltage on secondary is %f v\n',vls);
isph=k*iph; // phase current on secondary
isl=isph; 
printf('line current on secondary is %f A\n',isl);
Kv=(3*sph*isph)/1000; 
printf('Output KVA is %f KVA\n',Kv); 
disp('case c:delta-delta');
vph=E1; // primary phase voltage
iph=ip/sqrt(3); // phase current on primary
sph=vph/k; // secondary phase voltage
vls=sph; 
printf('Line voltage on secondary is %f v\n',vls);
isph=k*iph; // phase current on secondary
isl=sqrt(3)*isph; 
printf('line current on secondary is %f A\n',isl);
Kv=(3*sph*isph)/1000; 
printf('Output KVA is %f KVA\n',Kv); 
disp('case d:star-star');
vph=E1/sqrt(3); // primary phase voltage
iph=ip; // phase current on primary
sph=vph/k; // secondary phase voltage
vls=sqrt(3)*sph; 
printf('Line voltage on secondary is %f v\n',vls);
isph=k*iph; // phase current on secondary
isl=isph; 
printf('line current on secondary is %f A\n',isl);
Kv=(3*sph*isph)/1000; 
printf('Output KVA is %f KVA\n',Kv); 
