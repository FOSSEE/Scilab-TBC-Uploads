clear;
clc;
printf("\t\t\tExample Number 10.14\n\n\n");
// ammonia condenser  
// Example 10.14 (page no.-552-553) 
// solution

Ta = 50;// [degree celsius] temperature of entering ammonia vapour
Tw1 = 20;// [degree celsius] temperature of entering water
q = 200;// [kW] total heat transfer required
U = 1;// [kW/square meter degree celsius] overall heat transfer coefficient
Tw2 = 40;// [degree celsius] temperature of exiting water
Cw = 4.18;// [kJ/kg degree celsius] specific heat of water
// the mass flow can be calculated from the heat transfer with
m_dot_w = q/(Cw*(Tw2-Tw1));// [kg/s]
// because this is the condenser the water is the minimum fluid and 
C_min = m_dot_w*Cw;// [kW/degree celsius]
// the value of NTU is obtained from the last entry of table 10-4(page no.-543), with
E = 0.6;// effectiveness
NTU = -log(1-E);
// so that area is calculated as 
A = C_min*NTU/U;// [square meter]
// when the flow rate is reduced in half the new value of NTU is 
NTU1 = U*A/(C_min/2);
// and the effectiveness is computed from the last entry of table 10-3(page no.-543):
E1 = 1-exp(-NTU1);
// the new water temperature difference is computed as 
dT_w = E1*(Ta-Tw1);// [degree celsius]
// so that the heat transfer is 
q1 = C_min*dT_w/2;// [kW]
printf("the area to achieve a heat exchanger effectiveness of 60%% with an exit water temperature of 40 degree celsius is %f square meter",A);
printf("\n\n by reducing the flow rate we have lowered the heat transfer by %d percent",(q-q1)*100/q);



