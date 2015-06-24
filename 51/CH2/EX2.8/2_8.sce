clc;
clear;
sg=0.9;// specific gravity of oil
a=0.6;//m
pgage=50;//kPa
h1=2;//m
h2=2.6;//m

//the force on the trapezoid is the sum of the force on the rectangle f1 and force on triangle f2
f1=((pgage*1000)+(sg*1000*9.81*h1))*(a^2);//N
f2=sg*1000*9.81*(h2-h1)*(a^2)/2;//N
fres=f1+f2;//N
//to find vertical location of fres; fres*yres=(f1*(a/2))+(f2*(h1-h2))
yres=((f1*(a/2))+(f2*(a/3)))/fres;//m
disp("kN",(fres/1000),"The resultant force on the plate is=")
disp("m above the bottom plate alond the vertical line of symmetry.",yres,"The force acts at a distance of ")