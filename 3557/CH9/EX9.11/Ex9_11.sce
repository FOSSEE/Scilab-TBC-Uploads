//Example 9.11//
//(a)
xL=54;//wt % //liquid solution composition
x=50;//wt % //x is the overall composition
xa=18;//wt % //composition of two phases
wta=(xL-x)/(xL-xa)*100
mprintf("wta = %f percent",wta)
wtL=(x-xa)/(xL-xa)*100
mprintf("\nwtL =%f percent",wtL)
//Similarly, at 100 degree C, we obtain
xb=99;//wt % //composition of two phases
xa=5;//wt % //composition of two phases
wta1=(xb-x)/(xb-xa)*100
mprintf("\nwta1 = %f ",wta1)
wtb=(x-xa)/(xb-xa)*100
mprintf("\nwtb = %f percent",wtb)
