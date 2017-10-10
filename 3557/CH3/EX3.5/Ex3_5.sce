//Example 3.5//
a=0.741;//nm //unit cell dimensions
b=0.494;//nm //unit cell dimensions
c=0.255;//nm //unit cell dimensions
v=a*b*c
mprintf("v = %f nm^3",v)
a1=12.01;//gram //atomic mass of carbon
b1=1.008;//gram // atomic mass of Hydogen
c1=0.6023*10^24;//atoms // Avogardo's number
d1=2;//Number of electrons
e1=4;//Number of electrons
m=((d1*a1)+(e1*b1))/c1
mprintf("\nm = (%e n)g",m)
//Therefore, the unit cell density is,
d=10^7;//nm/cm
p=(m/v)*d^3
mprintf("\n p = %f g/cm^3 (As answer in the textbook is calculated  wrong)",p)
//solving for n gives
n=2
//Aa a result, there are
mprintf("\n4(=2n)C atoms + 8(=4n)H atoms per unit cell.")
