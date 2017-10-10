clear
// Variable declaration
E_t=880// Total duty at the condenser in kW
E_wcp=15// Total duty at water-circulating pump in kw

// Calculation
E=E_t+E_wcp// Total tower duty in kW
w_er=E*0.41*10**-3// Evaporation rate in kg/s
Cr_80=30// Circulation rate in kg/s
Cr_160=60// Circulation rate in kg/s
w_air=E*0.06// Air flow rate in kg/s
printf("\n \nEvaporation rate=%0.2f kg/s \nCirculation rate,80times=%2.0f kg/s \nCirculation rate,160times=%2.0f kg/s \nAir flow rate=%2.0f kg/s",w_er,Cr_80,Cr_160,w_air)

