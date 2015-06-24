clc
//initialization of varaibles
disp("Using air tables,")
h1=124.27
pr1=1.2147
p2byp1=6
p1=15
p4=15
eta=0.8
//calculations
pr2=p2byp1*pr1
h2s=197.5
h2=h1+(h2s-h1)/eta
h2B=124.3
dhB=-18500 //B/lb
dh2=h2B-h2
T3=1910 //R
h3=479.85
pr3=144.53
h3B=h2B
dh3=h3-h3B
wratio=(-dh3-dh2)/(dh3+dhB)
pr4=28.91
h4s=306.9
h4=h3-eta*(h3-h4s)
Wt=(1+wratio)*(h3-h4)
Wc=(h2-h2B)
Wnet=Wt-Wc
E=Wnet/(wratio*-dhB)
rate=2545/Wnet
BWratio=Wc/Wnet
//results
printf("Efficiency = %.3f",E)
printf("\n Air rate = %.1f lb air/hp hr",rate)
printf("\n Back work ratio = %.2f",BWratio)
