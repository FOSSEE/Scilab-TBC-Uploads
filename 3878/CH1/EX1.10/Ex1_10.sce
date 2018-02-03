clear
//
// Variable declaration
T_f=3// The temperature of fluid in °C
T_wi=11.5// The temperature of water at inlet in °C
T_wo=6.4// The temperature of water at outlet in °C
A=420// The surface area in m**2
U=110// The thermal transmittance in W/(m**2 K) 

// Calculation
delT_max=T_wi-T_f// The maximum temperature difference in K
delT_min=T_wo-T_f// The minimum temperature difference in K
LMTD=(delT_max-delT_min)/log(delT_max/delT_min)
Q_f=U*A*LMTD// The amount of heat transfer in W
printf("\n The logarithmic mean temperature difference is %0.3f  K",LMTD)
printf("\n The amount of heat transfer is %0.0f W (round off error) or %0.0f ",Q_f,Q_f/1000)
