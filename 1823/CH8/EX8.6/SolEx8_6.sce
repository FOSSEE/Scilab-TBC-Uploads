//determine the low-frequency voltage-gain ratio if hie and hfe have median values.
//Example 8.6 page no 242
clear
clc
hie=1000   //Ω
hfe=75         //Ω
Av=50
Req=Av*(hie/hfe)     //Ω
printf("\n The value of Req=%0.3f Ohm",Req)
Rl=10000    //kΩ
Rc=Req*Rl/(Rl-Req)  //kΩ
printf("\n The value of Rc=%0.3f Ohm",Rc)
hie=300      //Ω
hfe=100             //Ω
Re=1000          //kΩ
wL=2*%pi*200
Ce=(hie+(hfe+1)*Re)/(wL*Re*hie)*10^6
printf("\n The value of Ce=%0.3f mF",Ce)
Av=(hfe*Req)/(hie+(hfe+1)*Re)
printf("\n The value of Av=%0.3f ",Av)
