clc;
clear;
//Example 5.23
Cpo=2131;       //Sp heat of oil in [J/kg.K]
Cpw=4187;       //Sp heat of water in [J/kg.K]
mo_dot=0.10;    //Oil flow rate in [kg/s]
mw_dot=0.20;     //Water flow rate in [kg/s]
U=380;          //Overall heat transfer coeff in [W/sq m.K]
T1=373;         //Initial temp of oil [K]
T2=333;         //Final temperature of oil [K]
t1=303;         //Water enter temperature in [K]
t2=t1+mo_dot*Cpo*(T1-T2)/(mw_dot*Cpw)   //[K]   
//1.LMTD method
dT1=T1-t2           //[K]
dT2=T2-t1           //[K]
dTlm=(dT1-dT2)/log(dT1/dT2)     //[K]
lmtd=dTlm;           //[K]
Q=mo_dot*Cpo*(T1-T2)        //[J/s]
A=Q/(U*dTlm)                //[sq m]
Do=0.025;                   //Inner tubve diameter [m]
L=A/(%pi*Do)                //Length in [m]

//2.NTU method
mCp_c=mw_dot*Cpw               //[W/K]
mCp_h=mo_dot*Cpo               //[W/K]
printf("\n In textbook this value of mCp_h is wrongly calculated as 231.1  so we will take this only for calculation\n");
mCp_h=231.1;                //[W/K]
//mCp_h is smaller
C=mCp_h/mCp_c
E=(T1-T2)/(T1-t1)               //Effeciency
//For countercurrent flow
deff('[x]=f(ntu)','x=E-(1-%e^(-(1-C)*ntu))/(1-C*%e^(-(1-C)*ntu))')
ntu=fsolve(1,f)
A=ntu*mCp_h/U       //[sq m]
A=0.56      //Approximately
L1=A/(%pi*Do)        //Length in [m]
printf("\nFrom LMTD approach:\n length=%f m\n",L);
printf("\nFrom NTU method:\n length=%f m\n",L1);
