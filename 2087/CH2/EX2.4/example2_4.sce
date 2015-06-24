

//example 2.4
//calculate 
//deep percolation loss
//water application efficiency and time of irrigation.

clc;
//Given
B=12;//breadth of basin
L=36//length of basin
d=70//depth of irrigation
Ic=70//cumulative infiltration
kdash=9;
ndash=0.42;
//Part (a) 
a=5;
b=0.6;
q=1.5;//stream size
Q=(q*B)/1000;
tl=(L/a)^(1/b);
td=(Ic/kdash)^(1/ndash);
T=tl+td;
p=(1-(td/T)^(ndash))*100;
eita=(1-p/100)*100;
Tdash=(d*L*B)/(10*eita*Q*60);
p=round(p*100)/100;
eita=round(eita*100)/100;
Tdash=round(Tdash*10)/10;
mprintf("Part (a):")
mprintf("\nDeep percolation loss= %f percent.",p);
mprintf("\nWater application efficiency= %f percent.",eita);
mprintf("\nTime of irrigation= %f minutes.",Tdash);
//part (b)
a=8;
b=0.6;
q=3;
Q=(q*B)/1000;
tl=(L/a)^(1/b);
td=(Ic/kdash)^(1/ndash);
T=tl+td;
p=(1-(td/T)^(ndash))*100;
eita=(1-p/100)*100;
Tdash=(d*L*B)/(10*eita*Q*60);
p=round(p*100)/100;
eita=round(eita*100)/100;
Tdash=round(Tdash*10)/10;
mprintf("\nPart (b):")
mprintf("\nDeep percolation loss= %f percent.",p);
mprintf("\nWater application efficiency= %f percent.",eita);
mprintf("\nTime of irrigation= %f minutes.",Tdash);
