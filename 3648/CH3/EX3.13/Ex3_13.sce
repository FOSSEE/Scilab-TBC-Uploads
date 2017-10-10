//Example 3_13
clc();
clear;
//To find out at what height above ground does it hit wall and is it still going up befor it hits or down
v_1=24  //units in meters/sec
x=15   //units in meters
t=x/v_1   //units in sec
v0=18  //units in meters/sec
a=-9.8  //units in meters/sec^2
y=(v0*t)+(0.5*a*t^2)  //units in meters
printf("The arrow hits y=%.1f meters above the straight point\n",y)
v=v0+(a*t)   //units in meters/sec
printf("The Vertical componet of velocity is v=%.1f meters/sec\n",v)
printf("As V is Positive the arrow is in its way up\n")
vtotal=sqrt(v^2+v_1^2)   //units in meters/sec
printf("The magnitude of velocity is vtotal=%.1f meters/sec",vtotal)
