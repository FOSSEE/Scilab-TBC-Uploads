// Example 4.14 page no-226
clear
clc
vp=-3 ///V
vgs=vp-0.63  //V
idss=1.75 //mA
rd=5  //K-Ohm
gmo=1.8  //mA/V
//(a)
id=idss*(1-(vgs/vp))^2
rs=-vgs/0.08
gm=gmo*(vgs-vp)/vp
Av=gm*rd
printf("\n(a)Id for zero drift current\nId = %.2f mA\n\n(b)\nVgs = %.2f V\n\n(c)\nRs = %d K-Ohm\n\n(d)\ngm = %.3f mA/V\nAv = %.2f",id,vgs,rs,gm,Av)
