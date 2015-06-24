//pagenumber 290 example 10
clear
re=1*10^3;//ohm
hie=100;//ohm
hfe=100;
//voltage gain
volgai=1/((1+(hie/(2*(1+hfe)*re))));
//ri
ri=(hie/2)+(1+hfe)*re;
disp("voltage gain   =   "+string((volgai)));
disp("input resistance   =   "+string((ri))+"ohm");
