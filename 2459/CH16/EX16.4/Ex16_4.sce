//chapter16
//example16.4
//page346

Vo=10
Vi=0.25
Vif=0.5

Av=Vo/Vi
Avf=Vo/Vif

// since Avf=Av/(1+Av*mv), we get
mv=(Av/Avf-1)/Av

printf("fraction of output fed back to input = %.3f \n",mv)
