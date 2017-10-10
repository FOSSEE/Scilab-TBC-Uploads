//Example 9.5//

xcub=15;//wt % //cubic phase
x1=8;//mol % CaO//x1 is the overall composition
xmono=2;//wt % //monoclinic phase
monoclinic=(xcub-x1)/(xcub-xmono)*100
mprintf("monoclinic = %f mol percent",monoclinic)
cubic=(x1-xmono)/(xcub-xmono)*100
mprintf("\ncubic = %f mol percent",cubic)
