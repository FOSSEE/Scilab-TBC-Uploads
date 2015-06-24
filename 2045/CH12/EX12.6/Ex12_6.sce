//pagenumber 555 example 6
clear
c1=20*10^-12;//farad
limcur=16*10^-3;//ampere
w=(limcur/c1)*10^-6;//convert second to microsecond
disp("change of voltage   =   "+string((w))+"volt per microsecond");
