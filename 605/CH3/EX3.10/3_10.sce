//data
Zoc=-54.6*%i         //ohm
Zsc=103*%i            //ohm
d=1.5               //m
Zo=sqrt(Zoc*Zsc)
printf("\nZo=%.0f ohm",Zo)
//y=1/d*atanh(sqrt(Zsc/Zoc))
y=1/2/d*log(complex(1,1.8969)/complex(1,-1.8969))
printf("\ny=")
disp(y)
printf("1/m\nnegligible real part")                             //real part negligible