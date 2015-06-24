//Example 3.14
//calculate  the optimum thickness.
//Given
Ti=172           //C, saturation temp.
To=20            //C, ambient temp.
Cs=700           //per ton, cost of steam
Lv=487           //kcal/kg, latent heat of steam
ho=10.32         //kcal/h m^2 C, outer heat transfer coefficient
kc=0.031         //W/m C, thermal conductivity of insulation
n=5              //yr, service life of insulation
i=0.18          //Re/(yr)(Re), interest rate
//Calculation
di=0.168         //m, inner diameter of insulation
//Cost of insulation
Ci=17360-(1.91*10^4)*di         //Rs/m^3
Ch=Cs/(1000*Lv)                 //Rs/cal, cost of heat energy in steam
sm=1/(1+i)+1/(1+i)^2+1/(1+i)^3+1/(1+i)^4+1/(1+i)^n
//from eq. 3.33
ri=di/2         //m  inner radius of insulation
L=1             //m, length of pipe
//Pt=Ch*sm*2*%pi*ri*L*( 1/(((ri/kc)*('log(ro/ri)'))+ri/(ho*ro)))*7.2*10^3*(Ti-To)+%pi*(ro^2-ri^2)*L*Ci
//On differentiating , dpt/dro=-957.7*((1/ro)-(0.003/ro^2))/(log(ro)+(0.003/ro)+2.477)^2
deff('[x]=f(ro)','x=-957.7*((1/ro)-(0.003/ro^2))/(log(ro)+(0.003/ro)+2.477)^2+98960*ro')
ro=fsolve(0.1,f)
t=ro-ri
printf("The optimum insulation thickness is %f mm",t*1000)
