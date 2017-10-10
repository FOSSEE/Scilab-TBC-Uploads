clc;
E1=2500; // primary side voltage
E2=250; // secondary side voltage
P=10000; // rated VA of transformer
// to achieve a voltage level of 2625, two equal parts of 125 V each of secondary winding are connected in parallel with each other and in series with primary winding 
Eo=E1+E2/2; //  desired output of autotransformer
il=P/E2; // rated current of l v winding
i=2*il; // Total output current
K=(i*Eo)/1000; // Auto transsformer KVA rating
ip=P/E1; // rated current of h v winding
I=i+ip; // current drawn from supply
Pt=(i*(E2/2))/1000; // KVA transformed
Pc=K-Pt; // KVA conducted
printf('KVA output of autotransformer is %f KVA\n',K);  
printf('KVA transformed is %f KVA\n',Pt);
printf('KVA conducted is %f KVA',Pc);
  
