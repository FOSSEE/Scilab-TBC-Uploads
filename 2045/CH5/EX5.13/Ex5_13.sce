//pagenumber 293 example 13
clear
re=1*10^3;//ohm
hie=1000;//ohm
hfe=99;
//inptut resistance
ri=hie+((1+hfe)*(hie+1+hfe*re));


disp("input resistance   =   "+string((ri))+"ohm");//correction in the book
//voltage gain
volgai=((1+hfe)*(1+hfe)*re)/ri;
disp("voltage gain   =   "+string((volgai)));


//current gain
curgai=-((1+hfe)*(1+hfe));


disp("current gain   =   "+string((curgai)));
