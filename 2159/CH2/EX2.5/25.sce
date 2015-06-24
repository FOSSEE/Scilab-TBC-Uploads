// problem 2.5
w=9810
do=1.25
a=3.142*do*do*0.25
f1=w*a*1
f2=w*a*3 // buoyancy force of 3m lenght of pipe
di=1.2
s=9.8
wg=w*s*3*((1.25^2)-(1.2^2))*0.25*3.142
fa=f2-wg
disp(f1,"buoyancy force in N/m")
disp(fa,"upward force on anchor")
