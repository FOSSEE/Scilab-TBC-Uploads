clc;
il=100; // load current
pf=0.8;
E1=11000; // primary line voltage
E2=400; // secondary line voltage
p=(sqrt(3)*E2*il*pf)/1000; 
printf('power consumed by load is %f KW\n',p);
k=(sqrt(3)*E2*il)/1000;
printf('KVA rating of load is %f KVA\n',k);
iph=(k*1000)/(sqrt(3)*11000); // phase current on h v side
//primary is star connected therefore line current=phase current
printf('Line current on h v side is %f A\n',iph);
printf('Phase current on h v side is %f A\n',iph);
ipl=il/sqrt(3); 
printf('Line current on l v side is %f A\n',il);
printf('Phase current on l v side is %f A\n',ipl);
