clc;
E1=11000; // line voltage of primary
E2=415; // line voltage of secondary
kw=30; // KW rating of 3 phase induction motor
n=0.9; // efficieny
pf=0.833; // power factor at which load is operating
Kv=kw/(n*pf); // KVA rating of transformer
printf('KVA rating of transformer is %f KVA\n',Kv);
ilv=(Kv*1000)/(sqrt(3)*E2); // line current on l v side
//secondary is star connected therefore line current=phase current
printf('Line current on l v side is %f A\n',ilv);
printf('Phase current on l v side is %f A\n',ilv);
ilp=(Kv*1000)/(sqrt(3)*E1); // line current on h v side
ipp=ilp/sqrt(3); 
printf('Line current on h v side is %f A\n',ilp);
printf('Phase current on h v side is %f A\n',ipp);
