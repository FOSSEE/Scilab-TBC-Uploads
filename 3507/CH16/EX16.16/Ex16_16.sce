//chapter16
//example16.16
//page356

Vcc=18 // V
R1=16 // kilo ohm
R2=22 // kilo ohm
Vbe=0.7 // V
Re=910d-3 // kilo ohm

V2=Vcc*R2/(R1+R2)
Ve=V2-Vbe
Ie=Ve/Re

printf("voltage across Re = %.3f V \n",Ve)
printf("emitter current = %.3f mA \n",Ie)

clf()
x=linspace(0,18,100)
y=-(19.78/18)*x+19.78
xtitle("dc load line","Vce(volts)","Ic(mA)")
plot2d(x,y,style=3,rect=[0,0,19,20])
