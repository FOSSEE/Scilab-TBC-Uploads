clc;
// connections have been made in fig 1.42 in book to suit voltage requirement of 3000V, 3500V and 1000V. 
E1=1000; // primary winding  of transformer
E2=2000; // secondary winding of transformer
E3=500; // tertiary winding of transformer
l1=1050; // load in KVA across 3500 V
l2=180; // load in KVA across 1000 V
i1=(l1*1000)/(E1+E2+E3); // current through load of 1050 KVA
i2=(l2*1000)/(E1); // current through load of 180 KVA 
kt=l1+l2; // Total KVA load supplied
I=(kt*1000)/(E1+E2);
printf('current through %f KVA load is %f A\n',l1,i1);
printf('current through %f KVA load is %f A\n',l2,i2);
printf('current drawn from supply is %f A',I);
