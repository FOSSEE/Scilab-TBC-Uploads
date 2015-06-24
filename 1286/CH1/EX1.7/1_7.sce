clc
//initialisation
Rt=13.3//ohms
R100=7.0//ohms
R0=5.0//ohms
t=444.6//celsius
RT=9.1//ohms
//CALCULATIONS
tp=(Rt-R0)*100/(R100-R0)
Tp=(RT-R0)*100/(R100-R0)
s=(t-tp)*10000/(t*(t-100))
T=Tp+((s*(Tp*(Tp-100)))/10000)
Ts=Tp+((s*T*(T-100))/10000)
//results
printf(' platinum temperature of bath= % 2f C',T)
printf(' gas temperature of bath= % 2f C',Ts)
