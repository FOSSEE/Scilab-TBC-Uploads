i1=4-1 // KCL at node 1
disp(i1,"i1=")

v1=i1*1
v12=1*1
v2=v1-v12
i2=v2/1

i3=1-i2 //KCL at node 2

Vs=v2-1*i3 //KVL
disp(Vs,"Vs=")