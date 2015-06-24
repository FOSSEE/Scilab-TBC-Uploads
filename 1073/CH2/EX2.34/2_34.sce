clc;
clear;
//Example 2.34
//Given
T1=473    //[K]
T2=293    //[K]
k=0.17    //W/(m.K)
h=3    //W/(sq m.K)
h0=h    //W/sq m.K
rc=k/h    //m
r1=0.025    //Inside radius of insulaiton [mm]    
q_by_l1=2*%pi*(T1-T2)/(log(rc/r1)/k+1/(rc*h0))    //Heat transfer with insulation in W/m
//Without insulation:
q_by_l2=h*2*%pi*r1*(T1-T2)    //W/m
inc=(q_by_l1-q_by_l2)*100/q_by_l2    //Increase of heat transfer
printf("When covered with insulation,\n heat loss=%f W \n When without insulation,heat loss= %f W \n percent increase =%f percent",q_by_l1,q_by_l2,inc);
k=0.04    //Fibre glass insulaiton W/(sq m.K)
rc=k/h    //Critical radius of insulaiton
printf("In this case the avlue of rc=%f m is less than the outside radius of pipe (%f),\n So additon of any fibre glass would cause a decrease in the heat transfer \n",rc,r1)    
