
//calculating power required at the driving shaft at full load
Po=30D+3  //output power of dc shunt generator
Wi=1300  //mechanical and iron losses
Rsh=125  //shunt field resistance
V=250  //terminal voltage
Ra=.13  //armature resistance
Ish=V/Rsh
Wcu=V*Ish  //shunt field copper losses
Wc=Wi+Wcu  //constant losses of generator
Il=Po/V
Ia=Il+Ish
Wcu=Ia^2*Ra  //armature copper loss
Wt=Wc+Wcu  //total losses
Pi=Po+Wt
mprintf("Power required at the driving shaft at full load=%f kW\n", Pi/10^3)
//calculating efficiency at full load
e=Po/Pi*100
mprintf("Efficiency at full load=%f percent\n", e)
//calculating efficiency at half load
Il=(Po/2)/V
Ia=Il+Ish
Wcu=Ia^2*Ra  //copper losses
Wt=Wc+Wcu  //total losses
e=(Po/2)/(Po/2+Wt)*100
mprintf("Efficiency at half load=%f percent\n", e)
//at maximum efficiency
Wcu=Wc  //copper losses
Ia=sqrt(Wcu/Ra)
Il=Ia-Ish
mprintf("Power output at max efficiency=%f kW\n",Il*V/10^3)
//calculating max efficiency
e_max=Il*V/(Il*V+2*Wc)*100
mprintf("Max efficiency=%f percent", e_max)
//answer vary from the textbook due to round off error
