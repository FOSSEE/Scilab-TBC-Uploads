clc
clear
//Initialization of variables
disp("From fig B-4,")
disp("Appropraite notation from textbook has been used")
disp("All are enthalpy values at different stages")
hc=73.5 //Btu/lbm
hb=26.28 //Btu/lbm
hd=91.58 //Btu/lbm
hc2=190.7 //Btu/lbm
hd2=244.3 //Btu/lbm
hb2=44.4 //Btu/lbm
m1=1 //lbm
m2=0.461 //lbm
hc1=73.5 //Btu/lbm
hd1=83.35 //Btu/lbm 
hc2=190.7 //Btu/lbm 
hd2=244.3 //Btu/lbm
hb1=12.55 //Btu/lbm 
hc22=197.58 //Btu/lbm 
hd22=224 //Btu/lbm
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
w3=m1*(hc1-hd1) + m2*(hc22-hd22)
cop3=abs(qa3/w3)
hp3=4.71/cop3
//results
disp("part a")
printf("Work done = %.2f Btu/lbm",w1)
printf("\n Heat = %.2f Btu/lbm",qa1)
printf("\n horsepower required per ton of refrigeration = %.3f hp/ton refrigeration",hp1)
printf("\n Coefficient of performance actual = %.2f ",cop1)
disp("case 2")
printf("\n Work done = %.1f Btu/lbm",w2)
printf("\n Heat = %.2f Btu/lbm",qa2)
printf("\n horsepower required per ton of refrigeration = %.3f hp/ton refrigeration",hp2)
printf("\n Coefficient of performance actual = %.2f ",cop2)
disp("part b")
printf("\n Work done = %.1f Btu/lbm",w3)
printf("\n Heat = %.2f Btu/lbm",qa3)
printf("\n horsepower required per ton of refrigeration = %.3f hp/ton refrigeration",hp3)
printf("\n Coefficient of performance actual = %.2f ",cop3)
