clc
//Initialization of variables
t1=80 //F
t2=60 //F
p=14.696 //psia
ps=0.5069 //psia
pss=0.2563 //psia
cp=0.24
//calculations
pw= pss- (p-pss)*(t1-t2)/(2830- 1.44*t2)
phi=pw/ps
w=0.622*pw/(p-pw)
ws=0.0111
hfg=1059.9
hw=1096.5
hf=28
w2= (cp*(t2-t1)+ ws*hfg)/(hw-hf)
//results
printf("relative humidity  = %d percent",phi*100)
printf("\n humidity ratio = %.5f",w)
printf("\n in case 2, humidity ratio = %.4f ",w2)
