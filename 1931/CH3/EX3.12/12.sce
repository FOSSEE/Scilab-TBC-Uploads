clc
clear

//INPUT
a=0.424;//value of one axial unit
b=1;//value of second axial unit
c=0.367;//value of third axial unit
i1=0.212;//value at x-intercept
j1=1;//value at y-intercept
k1=0.183;//value at z-intercept
i2=0.848;//value at x-intercept
j2=1;//value at y-intercept
k2=0.732;//value at z-intercept
i3=0.424;//value at x-intercept
j3=%inf;//value at y-intercept
k3=0.123;//value at z-intercept

//CALCULATIONS
p1=1/(i1/a);//miller indices at x-intercept
q1=1/(j1/b);//miller indices at y-intercept
r1=1/(k1/c);//miller indices at z-intercept
p2=1/(i2/a)*2;//miller indices at x-intercept
q2=1/(j2/b)*2;//miller indices at y-intercept
r2=1/(k2/c)*2;//miller indices at z-intercept
p3=1/(i3/a);//miller indices at x-intercept
q3=1/(j3/b);//miller indices at y-intercept
r3=1/(k3/c);//miller indices at z-intercept

//OUTPUT
mprintf('The miller indices are (%i %i %i) \n The miller indices are (%i %i %i) \n The miller indices are (%i %i%3.0f)',p1,q1,r1,p2,q2,r2,p3,q3,r3)
