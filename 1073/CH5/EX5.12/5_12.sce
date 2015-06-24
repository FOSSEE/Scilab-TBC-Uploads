clc;
clear;
//Example 5.12
t1=290          //Inlet temperature of cooling water [K]
ho=2250         //Heat transfer coefficient based on inside area in [W/sq m.K]
lambda=400      //[kJ/kg] LAtent heat of benzene 
mb_dot=14.4     //[t/h] Condensation rate of benzene vapour
Cpw=4.187       //Specific heat
//With no Scale

Q=mb_dot*1000*lambda     //Heat duty of condenser in [kJ/h]
Q=(Q/3600)*1000     //[W]
//Shell and tube type of heat exchanger is used as a single pass surface condenser
Di=0.022        //I.D of tube[m]
L=2.5           //Length of each tube in [m]
n=120           //Number of tubes
A=%pi*Di*L      //Area of heat transfer per metre length in [m^2/m]
A=n*A           //Total area of heat transfer in [m^2]
Ai=(%pi/4)*Di^2 //Cross-sectional area of each tube in [m^2]
Ai=n*Ai         //Total area of flow in [m^2]
u=0.75          //Velocty of water [ms^-1]
V=u*Ai          //Volumetric flow of water 
rho=1000        //[Density of water in [kg/m^3]]
mw_dot=V*rho    //Mass flow rate of water in  [kg/s]

//Heat balance

//Q=mw_dot*Cpw*(t2-t1)
t2=Q/(mw_dot*Cpw*1000)+t1        //[K]
T=350       //Condensing benzene temperature in [K]
dT1=T-t1    //[K]
dT2=T-t2    //[K]
dTlm=(dT1-dT2)/log(dT1/dT2)     //LMTD
U=Q/(A*dTlm)                    //[W/m^2.K]
U=round(U)
//Neglecting resistance,we have:
hi=1/(1/U-1/ho)         //[W/m^2.K]
//hi is proportional to u^0.8
C=hi/(u^0.8)        //Constant

//With Scale

Rd=2.5*10^-4        //[m^2 K./W]
//1/U=1/hi+1/ho+Rd
//U=hi/(1+3.38*u^0.8)
//mw_dot=rho*u*Ai     //[kg/s]
//Let t2 be the outlet temperature of water 
//Q=mw_dot*Cpw*(t2-t1)
//t2=Q/(mw_dot*Cpw)+t1  
dT1=60
//dT2=T-(t1+8.373/u)
//dTlm=8.373/(u*log(60*u/(60*u-8.373)))
//Q=U*A*dTlm
//1.89=((u^-0.2)/(1+3.38*u^0.8))*(1/log((60*u)/60*u-8.373)
//If we assume values of u greater than 0.75 m/s
//For u=3.8     //[ms^-1]
u=3.8           //]ms^-1]
printf("\nWater velocity must be 3.88 ms^-1");
