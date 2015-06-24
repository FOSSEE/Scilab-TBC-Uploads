//data
Zin=complex(30,60)        //ohm
Zsc=%i*53.1        //ohm
Zoc=-48.3*%i            //ohm
//formula and result\
printf("\nresult:-")
Zo=sqrt(Zsc*Zoc)
printf("\nZo=%f ohm",Zo)
ZL=Zoc*(Zsc-Zin)/(Zin-Zoc)
disp(ZL,"ZL=")