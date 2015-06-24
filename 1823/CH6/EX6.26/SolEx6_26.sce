//Determine (a) the overall voltage-gain ratio Av = vL=vs, and (b) the overall current-gain ratio Ai = iL=is.
//Example 6.26 page no 193
clear
clc
hfe=100
Rl=3*10^3            //kΩ
Rc=3*10^3           //kΩ
hie=1*10^3
Av2=-((hfe*Rl*Rc)/(hie*(Rl+Rc)))
printf("\n The value of Av2=%0.3f " ,Av2)
Rc1=10*10^3         //kΩ
Re1=1*10^3          //kΩ
Av1=-((hfe*Rc1*hie)/((Rc1+hie)*((hfe+1)*Re1+hie)))
printf("\n The value of Av1=%0.3f " ,Av1)
Av=Av1*Av2
printf("\n The value of Av=%0.3f " ,Av)
Ai1=-((hfe*Rc1)/(Rc1+hie))
printf("\n The value of Ai1=%0.3f " ,Ai1)
Rc2=3*10^3          //kΩ
Ai2=-((hfe*Rc2)/(Rc2+Rl))
printf("\n The value of Ai2=%0.3f " ,Ai2)
Ai=Ai1*Ai2
printf("\n The value of Ai=%0.3f " ,Ai)
