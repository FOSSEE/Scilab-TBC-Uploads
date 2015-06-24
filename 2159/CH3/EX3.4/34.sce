// problem 3.4
d1=0.2
d2=0.1
d3=0.15
v1=4
g=9.81
vh1=(v1^2)/(2*g)
a1=3.142*d1*d1/4
a2=3.142*d2*d2/4
a3=3.142*d3*d3/4
v2=(a1*v1)/a2
vh2=(v2^2)/(2*g)
v3=(a1*v1)/a3
vh3=(v3^2)/(2*g)
q=a1*v1
mf=q*1000
disp(vh1,"velocity head at point 1")
disp(vh2,"velocity head at point 2")
disp(vh3,"velocity head at point 3")
disp(mf,"mass flow rate in kg/sec")
