//Chapter 5, Problem 15
clc;
r1=1000                             //in ohms
r2=4000                             //in ohms
r3=5000                             //in ohms
r4=1500                             //in ohms
V=24                                //in volts
rt=(((r1+r2)*r3)/(r1+r2+r3))+r4      //equivalent resistance of r1,r2,r3
it=V/rt;                            //total circuit current
i1=(r3/(r1+r2+r3))*it;              //current across top branch
v=i1*r2;                            //volt drop across r2
i2=((r1+r2)/(r1+r2+r3))*it;         //current across r3
p=it^2*r4;                          //power in wats
printf("(a) volt drop across 4 k resistor = %d V\n\n",v)
printf("(b) Current through the 5 k resistor = %d mA\n\n",i1*10e2)
printf("(c) Power in the 1.5 k resistor = %d mW\n\n",p*10e2)
