//Chapter-4,Example4_15_17,pg 4-35

S=29                                    //salinity

t=2                                     //time

l=0.01                                  //wavelength

T=30                                    //temperature

v=1510+1.14*S+4.21*T-0.037*T^2          //velocity of ultrasound in sea

d=v*t/2                                 //depth of sea bed

printf("1)depth of sea bed =")

disp(d)

printf("meter")

f=v/l                                   //frequency

printf("2) frequency =")

disp(f)

printf("Hz")
