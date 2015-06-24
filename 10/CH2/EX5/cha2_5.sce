Power=50;Lo1=0.5;
Lo2=0.75;Lo3=1;Lo4=1.1;
Pf1=1;Pf2=0.8;Pf3=0.9;
Pf4=1;Ho1=6;Ho2=6;Ho3=3;Ho4=3;Ho=6;Pc=200;
Pcu=500;

EngOut=(Lo1*Power*Ho1*Pf1)+(Lo2*Power*Ho2*Pf2)+(Lo3*Power*Ho3*Pf3)+(Lo4*Power*Ho4*Pf4)
 
A=Pc/1000

TotalHour=Ho+Ho1+Ho2+Ho3+Ho4

Coreloss=A*TotalHour
 
B=Pcu/1000
  
Copperloss=(Lo1^2*B*Ho1)+(Lo2^2*B*Ho2)+(Lo3^2*B*Ho3)+(Lo4^2*B*Ho4)
 
Totalloss=Coreloss+Copperloss
 
Eff=EngOut/(EngOut+Totalloss)*100
