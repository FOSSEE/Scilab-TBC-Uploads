clc;
E1=3300; // rated phase voltage of primary of a three phase transformer
v=360; // voltage injected in open delta h v winding to circulate full load current
vph=v/3; // voltage across each phase
P=300; // rated KVA of transformer
Pph=P/3; // KVA per phase
Iph=(Pph*1000)/E1; // per phase current
z=vph/Iph; 
printf('Per Phase leakage impedance is %f ohms\n',z);
zb=E1/Iph; // base impedance
zpu=z/zb; 
printf('leakage impedance per phase in per unit system is %f p.u',zpu);
