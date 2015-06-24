// Chapter 8_Metal Semiconductor and Semiconductor heterojunctions
//Caption_Shottky barrier diode and pn junction
//Ex_6//page 308
Jf=10   //forward biased current density
Jst=5.98*10^-5
Va=(0.0259*log(Jf/Jst))
//for pn junction diode
Js=3.66*10^-11    //reverse saturation current density
Va_pn=0.0259*log(Jf/Js)
printf('Forward bised voltage required for schottky is %1.3f V  and for pn junction is %1.3fV',Va,Va_pn)