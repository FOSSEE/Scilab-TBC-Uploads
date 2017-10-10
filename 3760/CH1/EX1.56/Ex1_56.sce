clc;
p=11000; // per phase h v side voltage
s=433; // l v side voltage
sp=s/sqrt(3); // per phase l v side voltage
K=10000; // VA rating of star connected load
pf=0.8; // power factor of load
z=0.5+1*%i; // Impedance per lead
zh=300+1500*%i; // per phase h v side leakage impedance
zl=0.2+1*%i; // per phase l v side leakage impedance
vl=400; // load voltage
k=p/sp; // turns ratio
zhl=zh/k^2; // h v side leakage impedance referred to l v side
zt=zhl+zl+z; // total impedance per phase between transformer and seconday load
il=K/(sqrt(3)*vl); // per phase load current
vd=round(il*(real(zt)*pf+imag(zt)*sqrt(1-pf^2))); // voltage drop per phase
vlp=vl/sqrt(3); // per phase load terminal voltage
E2=vlp+vd; // per phase voltage that must maintained l v terminals
vb=E2-sp; // voltage boost that tap changer must provide
ts=round((vb/sp)*100);  
printf('tap down if the tapped coils are on h v side or tap up if the tapped coils are on l v side by %f percent',ts); 
