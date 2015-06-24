clc
//Initialization of variables
hc=73.5
hb=26.28
hd=91.58
hc2=190.7
hd2=244.3
hb2=44.4
m1=1 //lbm
m2=0.461 //lbm
hc1=73.5
hd1=83.35
hc2=197.58
hd2=224
hb1=12.55
//Calculations
w1=hc-hd
qa1=hc-hb
cop1=abs(qa1/(w1))
hp1=4.71/cop1
w2=hc2-hd2
qa2=hc2-hb2
cop2=abs(qa2/(w2))
hp2=4.71/cop2
qa3=m1*(hc1-hb1)
w3=m1*(hc1-hd1) + m2*(hc2-hd2)
cop3=abs(qa3/w3)
hp3=4.71/cop3
//results
disp("part a")
printf("Work done = %.2f Btu/lbm",w1)
printf("\n Heat = %.2f Btu/lbm",qa1)
printf("\n horsepower required per ton of refrigeration = %.3f hp/ton refrigeration",hp1)
printf("\n Coefficient of performance actual = %.2f ",cop1)
printf("\n Work done = %.1f Btu/lbm",w2)
printf("\n Heat = %.2f Btu/lbm",qa2)
printf("\n horsepower required per ton of refrigeration = %.3f hp/ton refrigeration",hp2)
printf("\n Coefficient of performance actual = %.2f ",cop2)
disp("part b")
printf("\n Work done = %.1f Btu/lbm",w3)
printf("\n Heat = %.2f Btu/lbm",qa3)
printf("\n horsepower required per ton of refrigeration = %.3f hp/ton refrigeration",hp3)
printf("\n Coefficient of performance actual = %.2f ",cop3)
