clc
clear
disp("example 4 14")
c=40*10^(-6) //bank of capacitors in farads
v=400 //line voltage
i=40///line current
pf=0.8//power factor
f=50//line frequency
xc=1/(2*%pi*f*c)
ic=v/(sqrt(3)*xc)
il=i*(pf-sind(acosd(pf))*%i)
til=il+%i*ic
od=atand(imag(til)/real(til))
opf=cosd(od)
nlol=(abs(od)/i)^2
disp("(a)")
printf(" line current of capacitor bank %.1fA \n load current %d%diA \n total line current %d%.1fjA \n overall p.f %.3f \n new line loss to old line loss  %.3f",ic,real(il),imag(il),real(til),imag(til),opf,nlol)
pcb=(v/xc)
printf("\n phase current of capacitor bank %.3fA",pcb)
lcb=pcb*sqrt(3)
printf("\n line current of capacitor bank %.1fA",lcb)
tcu=il+lcb*%i
printf("\n total current %d%.1fjA =%.2fA at an angle %.2f",tcu,imag(tcu),abs(tcu),atand(imag(tcu)/real(tcu)))
pf2=cosd(atand(imag(tcu)/real(tcu)))
printf("\n power factor %.1f \n ratio of new line loss to original loss %.3f",pf2,(abs(tcu)/i)^2)
