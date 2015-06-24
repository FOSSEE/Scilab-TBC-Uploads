//find how 2 transformers connected in parallel share the load

clc;
Z1=complex(.012,.06);
Z2=2*complex(.014,.045);
Z=Z1+Z2;
r=800;        //kva rating
pf=.8;
S_L=r*(complex(pf,-1*sind(acosd(pf))));
S_1=S_L*Z2/Z;disp(S_1,'load by first transformer(kVA)');
S_2=S_L*Z1/Z;disp(S_2,'load by second transformer(kVA)');

S_2rated=300;
S_Lmax=S_2rated*abs(Z)/abs(Z1);
disp(S_Lmax,'max load by both transformer(kVA)');

r1=600;        //kva
V=440;
Z1actual=Z1*V/(r1*1000/V);
Z2actual=Z2*V/(r1*1000/V);
Zactual=Z1actual+Z2actual;
Z_Lact=V^2/(S_L*1000);

V1=445;
I1=(V1*Z2actual-10*Z_Lact)/(Z1actual*Z2actual+Z_Lact*Zactual);
I2=(V1*-1*Z1actual-10*Z_Lact)/(Z1actual*Z2actual+Z_Lact*Zactual);
S1=V*I1/1000;    disp(S1,'kVA of first transformer');
S2=V*I2/1000;    disp(S2,'kVA of second transformer');
Pout=abs(S1)*cosd(atand(imag(S1)/real(S1)))+abs(S2)*cosd(atand(imag(S2)/real(S2)));
disp(Pout,'total output power(kW)');