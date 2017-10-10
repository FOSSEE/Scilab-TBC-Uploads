clc;
disp('case b');
// KVA ratings and leakage impedances for the transformers are 
k1=100; // KVA rating for transformer 1; 
z1=0.02; // p u impedance for transformer 1; 
k2=75; // KVA rating for transformer 2; 
z2=0.03; // p u impedance for transformer 2; 
k3=50; // KVA rating for transformer 3; 
z3=0.025; // p u impedance for transformer 3;
disp('case b(1)');
// assumng k1 as a base KVA 
S=225; // load which has to be shared by three transformers
ze1=z1*100; // percentage impedance for transformer 1 
ze2=(k1/k2)*z2*100; // percentage impedance for transformer 2
ze3=(k1/k3)*z3*100; // percentage impedance for transformer 3
zt=(1/ze1)+(1/ze2)+1/(ze3); // total percentage leakage impedance
s1=S/(ze1*zt); 
s2=S/(ze2*zt);
s3=S/(ze3*zt);
printf('load shared by transformer 1,2 and 3 are %f KVA, %f KVA and %f KVA respectively\n',s1,s2,s3);
disp('case b(2)');
// since transformer 1 has lowest leakage impedance among three, it will be loaded to its rated capacity
S=k1*ze1*zt ; // total KVA shared
printf('greatest load that can be shared by transformers is %f KVA\n',S);
disp('case b(3)');
// for successful parallel operation of transformer all the three leakage impedances based on their KVA rating  should be equal.Since magnitude of leakage impedance of transformer1 is fixed that is 2 percent z2=z3=2 percent
ze1=2;
ze2=ze1*(k1/k2);
ze3=ze1*(k1/k3);
zt=(1/ze1)+(1/ze2)+(1/ze3); // Total leakage impedance
printf('magnitude of equivalent leakage impedance is %f percent\n',zt);

