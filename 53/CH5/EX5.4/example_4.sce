
//example5.4
//Shunt circuit feedback configuration//given 
R1=10000;//in ohms
R2=2000;//in ohms
Rc1=5000;//in ohms
hie=1000;//in ohms
hfe=100;
//unloaded feedback fraction B1
B1=R2/(R1+R2);
disp('open loop forward current amplification A1=io/i');
iia=1;//let
disp('ib=input-current coupling factor*iia');
disp('ib=(R1+R2)*iia/(R1+R2+hie)');
ib=(R1+R2)*iia/(R1+R2+hie);
disp('V2=(-hfe)*(Rc1||ri2)*ib');
disp('ri2=hie+(1+hfe)*(R1||R2)');
ri2=hie+(1+hfe)*(R1*R2/(R1+R2));
V2=(-hfe)*(Rc1*ri2/(Rc1+ri2))*ib;
disp('io/V2=C=-hfe/(hie+(1+hfe)*(R1||R2))');
C=-hfe/(hie+(1+hfe)*(R1*R2/(R1+R2)));
disp('Open loop current gain=A1=io/i=(ib/i)*(V2/ib)*(io/V2)');
A1=(ib/iia)*(V2/ib)*(C);
disp('Open-loop input resistance, ri=(R1+R2)||hie');
ri=(R1+R2)*hie/(R1+R2+hie);
disp('Open-loop output resistance ro as seen by the load resistance Rc2 is infinitely large since the load is in series with the infinitely large collector resistance of the transistor.');
disp('Closed-loop current gain,A1f=A1/(1+A1*B1)');
A1f=A1/(1+A1*B1);
disp(A1f);
disp('Closed-loop input resistance,rif=ri/(1+A1*B1)');
rif=ri/(1+A1*B1);
disp(rif);
disp('Closed-loop output resistance,rof=ro(1+A1*B1), since ro is infinitely large,the rof is also large infinitely..');
printf(" RESULTS:\n\n");
printf(" A1f=%1.2f,\n\n",A1f);
printf(" rif=%2.1f ohms,\n\n",rif);//approximately
printf(" rof=infinite\n\n");