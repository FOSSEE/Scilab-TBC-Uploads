clc
clear
//Initialization of variables
ps=216 //psig
pb=29.12 //in of Hg
p2=0.4 //in
t2=244 //F
//calculations
pa=0.491*pb
pabs=pa + p2*0.491
plb=pa+ ps
hcal=1166.5 //Btu/lb
h2=1200.1 //Btu/lb
h3=831.9 //Btu/lb
y=-(hcal-h2)/h3
//results
printf("Mean state in the line is %.1f psia with a moisture content of %.2f percent",plb,y*100)
