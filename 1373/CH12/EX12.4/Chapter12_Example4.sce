//Chapter-12, Example 12.4, Page 510
//=============================================================================
clc
clear

//INPUT DATA
Ch=2500;//Capacity rate of hot oil in W/K
Thi=360;//Temperature of hot fluid at the entrance of heat exchanger in degree C
Tho=300;//Temperature of hot fluid at the exit of heat exchanger in degree C
Tci=30;//Temperature of cold fluid at the entrance of heat exchanger in degree C
Tco=200;//Temperature of hot fluid at the exit of heat exchanger in degree C
U=800;//Overall heat transfer coefficient in W/m^2.K

//CALCULATIONS
Q=(Ch*(Thi-Tho));//Heat transfer from the oil in W
//Parallel flow
T1=Thi-Tci;//Temperature difference between hot fluid inlet temperature and cold fluid inlet temperature in degree C
T2=Tho-Tco;//Temperature difference between hot fluid outlet temperature and cold fluid outlet temperature in degree C
Tlm1=((T1-T2)/log(T1/T2));//LMTD for parallel flow arrangement in degree C
A1=(Q/(U*Tlm1));//Area of heat exchanger in m^2
//Counter flow
t1=Thi-Tco;//Temperature difference between hot fluid inlet temperature and cold fluid outlet temperature in degree C
t2=Tho-Tci;//Temperature difference between hot fluid outlet temperature and cold fluid inlet temperature in degree C
Tlm2=((t1-t2)/log(t1/t2));//LMTD for counter flow arrangement in degree C
A2=(Q/(U*Tlm2));//Area of heat exchanger in m^2

//OUTPUT
mprintf('Area of heat exchanger in parallel flow arrangement is %3.3f m^2 \n Area of heat exchanger in counter flow arrangement is %3.3f m^2',A1,A2)

//=================================END OF PROGRAM==============================
