clc;
p=200; // rated KVA of transformer
n=0.98; // efficiency
t1=20; // temperature after one hour of operation
t2=34; // temperature after two hour of operation
r=1/3; // ratio of full load core losses to ohmic loss
disp('case a');
t=[(t2/t1)-1]; 
th=-1/log(t); // heating time constant in hours
theta=t1/(1-exp(-1/th));
printf('Final steady temperature rise of the transformer on rated load is %f degree celsius\n',theta);
disp('case b');
f=1.2; //with increased heat dissipation ,ratio of new loss to old loss
Pn=sqrt((f*(1+r))-r)*p;
printf('New KVA rating of transformer is %f KVA\n',Pn);
// for a temperature rise of 78 degree 
t3=78; 
f=(t3/theta)*f; // ratio of new loss to old loss
Pn=sqrt((f*(1+r))-r)*p;
printf('New KVA rating of transformer is %f KVA\n',Pn);
 
