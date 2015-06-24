clc
//initialization of varaibles
x=0.4
P=100 //psia
//calculations
y=1-x
disp("From table 2,")
vf=0.01774
vg=4.432
vx=x*vf+y*vg
hf=298.4
hfg=888.8
hx=hf+y*hfg
sg=1.6026
sfg=1.1286
sx=sg-x*sfg
//results
printf("Specific volume = %.3f cu ft/lb",vx)
printf("\n Enthalpy = %.1f B/lb",hx)
printf("\n Entropy = %.4f B/lb R",sx)
