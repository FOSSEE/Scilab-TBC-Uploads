clc;
//  shorts circuits test on two transformers gave the following results
P1=200000; // KVA of transformer 1
V1=3; // percentage rated voltage 
pf1=0.25; // lagging power factor for Xmer1
P2=500000; // KVA of transformer 2
V2=4; // percentage rated voltage
pf2=0.3 // lagging power factor for Xmer2
l=560000; // load connected across parallel combination of transformers in KW
pf=0.8; // power factor of load
E1=11000; // Rated primary voltage
E2=400; // Rated secondary voltage 
ib=1; // base current
vb=1; // base voltage
z1=(V1/100)*1; // base impedance
Ze1=z1*(pf1+%i*sqrt(1-pf1^2)); // p u impedance
z2=(V2/100)*1; // base imedance
Ze2=z2*(pf2+%i*sqrt(1-pf2^2)); // p u impedance
pb=P2; // base for p u conversion
ze1=(pb/P1)*Ze1;
ze2=(pb/P2)*Ze2;
zt=ze1+ze2; // total impedance
s=l/pf; // KVA rating of transformer
S=s*(pf-%i*sqrt(1-pf^2)); // complex form of KVA rating
s1=(S*ze2)/(zt); // KVA shared by first transformer
PF1=cos(atand(imag(s1),real(s1))*(%pi/180));
s1w=round((abs(s1)*PF1)/1000); 
printf('KW load shared by transformer 1 is %f at %f power factor lagging\n',s1w,PF1);
s2=(S*ze1)/(zt); // KVA shared by first transformer
PF2=cos(atand(imag(s2),real(s2))*(%pi/180));
s2w=ceil((abs(s2)*PF2)/1000); 
printf('KW load shared by transformer 2 is %f at %f power factor lagging\n',s2w,PF2);
i1=abs(s1)/P1; // p u current shared by transformer 1
i2=abs(s2)/P2; // p u current shared by transformer 2
vr=i1*(real(Ze1)*PF1+imag(Ze1)*sqrt(1-PF1^2)); // voltag regulation
dv=E2*vr; // change in terminal voltage
Vt=E2-dv; // terminal voltage
printf('Secondary terminal voltage is %f v',Vt);
