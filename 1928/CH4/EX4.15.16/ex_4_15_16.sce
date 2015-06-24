//Chapter-4,Example4_15_16,pg 4-34

S=10                                    //salinity

t=2                                     //time

T=20                                    //temperature

v=1510+1.14*S+4.21*T-0.037*T^2          //velocity of ultrasound in sea

d=v*t/2                                 //depth of sea bed

printf("depth of sea bed =")

disp(d)

printf("meter")
