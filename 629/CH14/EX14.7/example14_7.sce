clear
clc
//Example 14.7 NET POSITIVE SUCTION HEAD
//To find Approx Value
function [A]= approx (V,n)
    A= round(V*10^n)/10^n; //V-Value, n-to what place
    funcprot (0)
endfunction
g=32.2;//[ft/s^2]
Gamma=62.2; //[lbf/ft^3]
d=8/12; //diameter[ft]
A=%pi*d^2/4 //area[ft^2]
Q=2; //discharge[cfs]
V2=approx(Q/A,2) //[ft/s]
p1=14.7; //[lbf/in^2]
//Pressure head at reservoir,hr
hr=approx(p1*144/Gamma,0) //[ft]
//Energy equation, (p1/gamma)+(V1^2/2g)+z1=(p2/gamma)+(V2^2/2g)+z2+hL
//V1=0,z1=0
z2=6; //[m]
Ce=0.1; //entrance loss coefficient
Cb=0.2; //bend loss coefficient
hL=(Ce+Cb)*V2^2/(2*g)
//Head at pump entrance, he=p2/Gamma
he=approx(hr-z2-V2^2/(2*g)-hL,1) //[ft]
pvap=0.506; //vapor pressure[psi]
hp=pvap*144/Gamma //[ft]
//Net positive suction head
NPSH=he-hp //[ft]
printf("\nThe net positive suction head = %.1f ft.\n",NPSH)
//Traditional suction specific speed
N=1750; //in rpm
//1cfs=449 gpm
Nss=N*(Q*449)^(1/2)/NPSH^(3/4)
printf("\nThe traditional suction specific speed, Nss = %.f.\n",Nss)