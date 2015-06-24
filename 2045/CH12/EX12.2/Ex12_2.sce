//pagenumber 553 example 2
clear
latcur=50*10^-3;//ampere
durpul=50*10^-6;//second
induct=0.5;//henry
r=20;//ohm
voltag=100;//volt
w=induct/r;
inpcur=-(voltag/r)*((1)-exp(-durpul/w));
disp("current   =   "+string(abs(inpcur))+"ampere");
disp("input current less than required current");
