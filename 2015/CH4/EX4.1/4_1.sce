clc
//initialisation of variables
t1=523.3 //temparature under p1=40 bar in k
t2=314.5 //temparature under p2=0.80 bar in k
s4=2.797 //entropy under p1=40 bar 
s1=6.070 //entropy under p1=40 bar
sf3=0.593 //entropy under p2=0.08 bar
sfg3=7.634 //entropy under p2=0.08 bar
h4=1087 //kj/kg
h1=2801 //kj/kg
hf3=174 //kj/kg under p2=0.08bar
hfg3=2402 //kj/kg under p2=0.08bar
//CALCULATIONS
eff=(t1-t2)/t1
x3=(s4-sf3)/sfg3
x2=(s1-sf3)/sfg3
h3=hf3+(x3*hfg3)
h2=hf3+(x2*hfg3)
wt=h1-h2
cw=h4-h3
wr=(wt-cw)/wt
//RESULTS
printf('efficiency of carnot cycle is %2f',eff)
printf('\nquality is %2f',x3)
printf('\ngross work of expansion is %2f',wt)
printf('\nwork ratio is %2f',wr)
