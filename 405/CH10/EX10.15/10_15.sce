clear;
clc;
printf("\t\t\tExample Number 10.15\n\n\n");
// crossflow exchanger as energy conservation device  
// Example 10.15 (page no.-553-555) 
// solution

q = 210000;// [W] heat to be removed from atmospheric air
m_dot_h = 1200/60;// [kg/s] hot air flow rate
m_dot_c = m_dot_h;// [kg/s] cold air flow rate
Ta1 = 25;// [degree celsius] atmospheric air temperature 
Ta2 = 0;// [degree celsius] temperature of air entering from out-door conditions 
U = 30;// [W/m degree celsius] overall heat transfer coefficient
Cp = 1005;// [J/kg degree celsius] specific heat of air

//*************calculation 1. the design value for the area of the heat exchanger **************//

// the hot and cold fluids have the same flow rate 
// and 
Ch = m_dot_h*Cp;// [W/degree celsius]
Cc = m_dot_c*Cp;// [W/degree cslsius]
Cmin_by_Cmax = 1;// for use in table 10-3(page no.-543)
// the energy balance gives q = Ch*dT_h = Cc*dT_c
// and 
dT_h = q/Ch;// [degree celsius]
dT_c = q/Cc;// [degree celsius]
// the heat exchanger effectiveness is 
E = dT_h/(Ta1-Ta2);
// consulting table 10-3(page no.-543) for a cross flow exchanger with both fluids unmixed, and inserting the value 
C = 1;
// we have 
deff('[y] = f(N)','y = E-1+exp(N^(0.22)*(exp(-N^(0.78))-1))');
N = fsolve(1,f);
// solving above to get the value of NTU
// area is 
A = N*Ch/U;// [square meter]
printf("the design value for the area of heat exchanger is %f square meter",A);

//*************calculation 2. the percent reduction in heat transfer rate if the flow rate is reduced by 50% while keeping the inlet temperatures and   value of U constant ******************//

// we now examine the effect of reducing the flow rate by half, while keeping the inlet temperatures and value of U the same. 
// note that the flow rate of both fluids is reduced because they are physically the same fluid. this means that the value of Cmin_by_Cmax will remain the same at a value of 1.0.
// the new value of Cmin is 
Cmin = Cc/2;// [W/degree celsius] 
// so that NTU is 
N = U*A/Cmin;
// equation (b) may be used for the calculation of effectiveness 
E = 1-exp(N^(0.22)*(exp(-N^(0.78))-1));
// the temperature difference for each fluid is then 
dT = E*(Ta1-Ta2);// [degree celsius]
// the resulting heat transfer is then 
q_dot = m_dot_c*Cp*dT/2;// [W]
printf("\n\nthe percent reduction in heat transfer rate if the flow rate is reduced by 50%% is %f ",(q-q_dot)*100/q);

//*************calculation 3. the percent reduction in heat transfer rate if the flow rate is reduced by 50% and the value of U varies as mass flow to   the 0.8 power, with the same inlet temperature conditions

// finally, we examine the effect of reducing the flow rate by 50 percent coupled with reduction in overall heat-transfer coefficient under the assumption that U varies as m_dot^(0.8) or, correspondingly, as Cmin^(0.8)
// still keeping the area constant, we would find that NTU varies as N = U*A/Cmin ~ C^(0.8)*C^(-1) = C^(-0.2)
// our new value of N under these conditions would be 
N1 = 0.8*(Cmin/Cc)^(-0.2);
// inserting this value in equation (b) above for the effectiveness 
E1 = 1-exp(N1^(0.22)*(exp(-N1^(0.78))-1));
// the corresponding temperature difference in each fluid is 
dT = E1*(Ta1-Ta2);// [degree celsius]
// the heat transfer is calculated as 
q1 = Cmin*dT;// [W]
printf("\n\n the percent reduction in heat transfer is %f ",(q-q1)*100/q);
