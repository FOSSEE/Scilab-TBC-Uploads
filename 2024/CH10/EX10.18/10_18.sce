clc
//Initialization of variables
m=1 //lbm
disp("From psychrometric charts,")
t1=82 //F
phi1=0.4
H1=30 //Btu/lbm dry air
w1=65 //grains/lbm dry air
w2=250 //grains/lbm dry air
//calculations
dmf3=(w2-w1)*0.0001427
hf3=68
hf4=43
H2=62.2
H1=30
mf4= (H1-H2+ dmf3*hf3)/(hf4-hf3)
per=dmf3/(dmf3+mf4)
//results
printf("amount of water cooled per pound of dry air = %.3f lbm dry air/lbm dry air",mf4)
printf("\n percentage of water lost by evaporation = %.2f percent",per*100)
