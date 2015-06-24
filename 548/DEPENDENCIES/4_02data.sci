A1=0.08;//convergent duct with inlet area in m^2
A2=0.771;//exit area
D1=1.23;//density of air at inlet
V1=210;//inlet velocity of air
V2=321;//outlet velocity of air
//as inlet velocity of 210 m/s is high speed flow density will vary
D2=(A1*V1*D1)/(A2*V2)  //density of air at the exit duct