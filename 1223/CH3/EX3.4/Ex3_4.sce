clear;
clc;
//Example 3.4
Vbb=1.5;//(V)
Rb=580;//(KOhm)
Veb=0.6;//(V)
Vcc=5;//(V)
b=100;
//writing Kirchhoff voltage law equation around E-B loop
Ib=(Vcc-Veb-Vbb)/Rb;
printf('\nbase current=%.3f mA\n',Ib)
Ic=b*Ib;
printf('\ncollector current=%.2f mA\n',Ic)
Ie=(1+b)*Ib;
printf('\nemitter current=%.3f mA\n',Ie)
Vec=(1/2)*Vcc;
printf('\nce voltage=%.2f V\n',Vec)
Rc=(Vcc-Vec)/Ic;
printf('\ncollector resistance=%.f KOhm\n',Rc)
