//chapter-14,Example14_4,pg 435

//assuming eps1=9.85*10^12

x=4//separation between plates

x3=1//thickness of dielectric

eps1=9.85*10^12//dielectric const. of free space

eps2=120*10^12//dielectric const. of material

Sx=(1/(1+((x/x3)/((eps1/eps2)-1))))//sensitivity of measurement of capacitance

printf("sensitivity of measurement of capacitance\n")

printf("Sx=%.2f",Sx)