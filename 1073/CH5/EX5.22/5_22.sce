clc;
clear;
//Example 5.22
mh_dot=16.67;       //Mass flow rate of hot fluid in [kg/s]
mc_dot=20;         //Mass flow rate of cold fluid in [kg/s]
Cph=3.6;            //Sp heat of hot fluid in [kJ/kg.K]
Cph=Cph*1000;        //Sp heat of hot fluid in [J/kg.K]
Cpc=4.2;            //Sp heat of cold fluid in [kJ/(kg.K)]
Cpc=Cpc*1000;        //Sp heat of cold fluid in [J/(kg.K)]
U=400;              //Overall heat transfer coefficient in [W/sq m.K]
A=100;              //Surface area in [sq m]
mCp_h=mh_dot*Cph     //[J/s] or [W/K]
mCp_c=mc_dot*Cpc     //[J/s] or [W/K]
mCp_small=mCp_h     //[W/K]
C=mCp_small/mCp_c   //Capacity ratio           
ntu=U*A/mCp_small   //NTU
T1=973;             //Hot fluid inlet temperature in [K]
t1=373;             //Cold fluid inlet temperature in [K]
//Case 1:Countercurrent flow arrangement
E=(1-%e^(-(1-C)*ntu))/(1-C*%e^(-(1-C)*ntu)) //Effectiveness
//W=T1-T2/(T1-t1)  therefore:
T2=T1-E*(T1-t1)     //[K]
printf("\nExit temperature of hot fluid is %d K",round(T2));
t2=mCp_h*(T1-T2)/(mCp_c)+t1     //[From energy balance eqn in ][K]
printf("\nExit temperature of cold fluid is %d K(%d C)\n",round(t2),round(t2-273));

//Case 2:Parallel flow arrangement
E1=(1-%e^(-(1+C)*ntu))/(1+C)
//In the textbok here is a calculation mistake,and the value of E is takne as E=0.97

T2=T1-E1*(T1-t1)     //[K]
t2=mCp_h*(T1-T2)/(mCp_c)+t1     //[From energy balance eqn in ][K]
printf("\nExit temperature of Hot water=%f K\n",T2);
printf("\nExit temperature of cold water=%f K\n",t2);

