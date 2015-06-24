
//calculating efficiency at full load
Il=200  //current supplied
Rsh=100  //shunt field resistance
V=500  //terminal voltage
Ish=V/Rsh
Ia=Il+Ish
Wcu=Ia^2*.1  //armature copper losses
Wc=4000 //constant losses including field copper losses
Wt=Wcu+Wc  //total losses
Po=V*Il  //output power
e=Po*100/(Po+Wt)
mprintf("Efficiency at full load=%f percent\n", e)
//Calculating efficiency at half load
Il=200/2
Ia=Il+Ish
Wcu=Ia^2*.1
Wt=Wc+Wcu
Po=V*Il
e=Po*100/(Po+Wt)
mprintf("Efficiency at half load=%f percent\n", e)
//Calculating efficiency at 1.5 times the full load
Il=1.5*200
Ia=Il+Ish
Wcu=Ia^2*.1
Wt=Wc+Wcu
Po=V*Il
e=Po*100/(Po+Wt)
mprintf("Efficiency at 1.5 times the full load=%f percent", e)
