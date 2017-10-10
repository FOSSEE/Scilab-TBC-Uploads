clc;
// after deriving the expression for both the transformer and auto transformer
k=0.8; // ratio of V2/V1(turns ratio)
W=100; // Power to be delivered in KW
pf=1; // unity power factor
n=0.96; // given efficiency
disp('for two winding transformer');
ks=W; 
printf('KVA rating for secondary of two winding transformer is %f KVA\n',ks);
kp=ks/n;
printf('KVA rating for primary of two winding transformer is %f KVA\n',kp);
disp('for auto transformer');
kab=(W/n)*(1-k);
printf('KVA rating for section AB of autotransformer is %f KVA\n',kab);
kbc=W*(1-k/n); 
printf('KVA rating for section BC of autotransformer is %f KVA\n',kbc);
