clc;
k1=1000; // Rated KVA of transformer1
k2=500; // Rated KVA of transformer2
ze1=0.02+%i*0.06; // p u leakage impedance of transformer 1
ze2=0.025+%i*0.08; // p u leakage impedance of transformer 2
zb=1000; // base impedance
Z1=(zb/k1)*ze1; // impedance of transformer 1
Z2=(zb/k2)*ze2; // impedance of transformer 2
zt=Z1+Z2; // total impedance
S=k1*(abs(zt)/abs(Z2)); // since ze1<ze2 transformer 1 reaches its rated KVA threrfore load shared by transformer 2 is given by 
l2=S-k1; // load shared by transformer 2
printf('Largest KVA load that can be loaded on parallel combination of transformer is given by %f KVA',S);




 
