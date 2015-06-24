//pagenumber 429 example 6
clear
hfe=50;
hie=1.1*10^3;//ohm
//(1) gain
r1=2*10^3;//ohm
volgai=-hfe*r1/(hie);
r11=25*10^3*hie/(25*10^3+hie);
r11=r1*r11/(r1+r11);
volga1=-hfe*r11/hie;
volgai=volgai*volga1;
disp("voltage gain   =   "+string((volgai)));
freque=20;//hertz
ri=25*10^3*hie/(25*10^3+hie);
cb=1/(2*3.14*(ri+r1)*(freque));
disp("cb   =   "+string((cb))+"farad");
cb=1/(2*3.14*3.05*10^3*10/3.14);
disp("cb   <=   "+string((cb))+"farad");

