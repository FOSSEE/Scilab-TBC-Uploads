clc
clear
//Initalization of variables
h6=157.933 //Btu/lb
s2=0.11626
sf=0.16594
sfg=0.14755
hf=139.095 //Btu/lb
hfg=126.98 //Btu/lb
h5=12.016 //Btu/lb
h2=1201.1 //Btu/lb
h1=69.7  //Btu/lb
w=348.8 //Btu/lb
m=0.0745 //lb
//calculations
x7=-(s2-sf)/sfg
h7=hf-x7*hfg
dh6=h6-h7
mr=(h7-h5)/(h2-h1)
work=w*m
tw=work+dh6
dh65=h6-h5
eff=tw/dh65 *100
//results
printf("Thermal efficiency = %.2f percent",eff)
