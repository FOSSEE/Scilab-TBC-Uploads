funcprot(0)
function [polar] = rect2polar(x,y) //Function to convert rectangular coordinates to polar coordinates
    polar=ones(1,2)
    polar(1)=sqrt((x^2)+(y^2))
    polar(2)=atan(y/x)
    polar(2)=(polar(2)*180)/%pi
endfunction
clc
Po=200*10^3 //Output Power 
f=50 //frequency in hertz
Vl=440
n=91 //efficiency
pf=0.86
Vph=Vl //For a delta connected load
//Since the efficiency and output power have been given in the question, the input power can be easily calculated
Pi=(Po/n)*100
printf("\n Input power=%.2f kW \n",Pi*10^-3)
//Since the input power is now known we can calculate the line current
Il=Pi/(sqrt(3)*Vl*pf)
printf("\n Il=%.1f A \n",Il)
Iph=Il/sqrt(3)
printf("\n Iph=%.1f A \n",Iph)
apc=Iph*pf //Active component of phase current
printf("\n Active component of phase current=%.1f A \n",apc)
rpc=Iph*sqrt(1-pf^2)
printf("\n Reactive component of phase current=%.1f A \n",rpc)