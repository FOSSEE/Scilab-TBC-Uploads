//chapter 5 example 3a//
clc
clear
//threshold temperature=To,ratio of current densities=R,current density=Jth,curren density at 20 deg =J1,current density at 80deg=J2//
//J1=Jth*(exp((273+20)/160))//
//J2=Jth*(exp((273+80)/160))//
K1=(exp((273+20)/160));
K2=(exp((273+80)/160));
R=K2/K1;//for AlGaAs//
printf("\n ratio of current densities for AlGaAs=%f\n",R)
//J1=Jth0*exp(273+20)/55/
//J2=Jtho(exp((273+80)/55//
K1a=(exp((273+20)/55));
K2a=(exp((273+80)/55));
R1=K2a/K1a;//for AlGaAsp//
printf("\n ratio of current densities for AlGaAsp=%f\n",R1)