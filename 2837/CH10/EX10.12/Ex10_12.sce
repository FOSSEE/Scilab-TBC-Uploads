clc
clear
//Initialization of variables
disp("From table 2 of keenan and keynes,")
p1=98.87 //psia
p2=31.78 //psia
t1=80 //F
h2=26.365 //btu/lb
h1=11.554 //btu/lb
hfg=67.203 //btu/lb
//calculations
x=(h2-h1)/hfg
//results
printf("The state of vapor leaving is  %.2f psia with a quality of %.2f percent",p2,x*100)
