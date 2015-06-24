//chapter-5,Example5_2,pg 491

//serie arm resistance=10k, since the divider arm resistance Rsh=2Rse therefore for straight binary code, one should have section voltage ratio as Vos/Vis=0.5

printf("voltage section ratio=0.5\n")

//Vo/Vref=0.5

Rse=10*10^3//series resistance(Rsh/2)

Rf=0.5*(16*Rse)/15//feedback resistor

printf("feedback resistor\n")

printf("Rf=%.3f ohm",Rf) 