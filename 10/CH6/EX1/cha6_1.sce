IMp=500;Pf=0.8;Pf1=0.6;
SMp=300;Pfs=1;P1=400;
P2=4;

Power=IMp*Pf
 
RecPower=IMp*Pf1

SyPower=SMp*Pfs

TotalPower=Power+SyPower
 
RecPower
 
ComplesPower=sqrt(TotalPower^2+RecPower^2)

PowerFactor=(TotalPower/ComplesPower)
 
Power1=sqrt(Power^2-RecPower^2)
 
KVAR=RecPower-Power1
 
NewKVA=sqrt(TotalPower^2+KVAR)

PowerFactor1=(TotalPower/NewKVA)
 
Ism=P1/(sqrt(3)*P2)

PowerfactorSYS=SyPower/P1
