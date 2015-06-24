
//calculating armature current
Pout=7.46D+3//output power
Wc=500//iron amd mechanical losses
P=Pout+Wc//total mechanical power developed
Pm=P/3
Va=440/sqrt(3)//applied voltage per phase
pf=.75//lagging power factor
Ra=.5//effective resistance per phase
//Pm=Va*Ia*pf-Ia^2*Ra
//solving this quadratic equation
Ia=(Va*pf-sqrt((Va*pf)^2-4*Ra*Pm))/(2*Ra)
mprintf("Armature current=%f A\n", Ia)
//calculating total power supplied
Pin=Va*Ia*pf
Pi=3*Pin//total input to stator
Pe=650//excitation loss
Pt=Pi+Pe
mprintf("Total power supplied=%f W\n", Pt)
//calculating efficiency
e=Pout/Pt*100
mprintf("Efficiency=%f percent", e)
//answers vary from the textbook due to round off error
