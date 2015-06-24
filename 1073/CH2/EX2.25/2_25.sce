clc;
clear;
//Examplr 2.25
h=8.5 ;      //[W/sq m.K]
dT=175 ;     //[K]
r2=0.0167;           //[m]
Q_by_l=h*2*%pi*r2*dT        //[W/m]
k=0.07 ;         //For insulating material in  [W/m.K]
//for insulated pipe--50% reduction in heat loss
Q_by_l1=0.5*Q_by_l      //[w/m]
deff('[x]=f(r3)','x=Q_by_l1-dT/((log(r3/r2))/(2*%pi*k)+1/(2*%pi*r3*h))')

//by trial and error method we get:
r3=fsolve(0.05,f)
t=r3-r2         //thickness of insulation in [m]
printf('\n Hence,required thickness of insulation is %f m=%f mm or %d m",t,t*1000,round(t*1000));
