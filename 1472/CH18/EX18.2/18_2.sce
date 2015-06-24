clc
//initialization of varaibles
ha=1187.2 //B/lb
sa=1.6026 //B/lb R
h3s=895 //B/lb
h1s=1090 //B/lb
p1=28 //psia
h2s=993 //B/lb
p2=6.2 //psia
n=0.65
//calculations
disp("From  Table 3,")
h1=ha-n*(ha-h1s)
s1=1.65 //B/lb R
h2dash=1024 //B/lb
h2=h1-n*(h1-h2dash)
s2=1.706 //B/lb R
h3dash=953 //B/lb
h3=h2-n*(h2-h3dash)
etaT=(ha-h3)/(ha-h3s)
reheat=etaT/n
//results
printf("Internal efficiency = %.3f",etaT)
printf("\n Reheat factor = %.2f",reheat)
