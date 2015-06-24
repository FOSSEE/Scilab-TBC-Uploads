//Chapter-6, Example 6.6, Page 239
//=============================================================================
clc;
//Input parameters
p1=0.5;//reflection coefficient at port 1
p2=0.6;//reflection coefficient at port 2
p3=1;//reflection coefficient at port 3
p4=0.8;//reflection coefficient at port 4
//[S]=[0,0,0.707,0.707;0,0,0.5,-0.707;0.707,0.707,0,0;-0.707,0.707,0,0];//S matrix of magic Tee
//solving for b1,b2,b3,b4 we get it as
//calculations
b1=0.6566;
b2=0.7576;
b3=0.6536;
b4=0.0893;
P1=(b1)^2;//power at port1 in watts
disp(P1);
P2=(b2)^2;//power at port2 in watts
disp(P2);
P3=(b3)^2;//power at port3 in watts
disp(P3);
P4=(b4)^2;//power at port4 in watts
disp(P4);
//=================================END OF PROGRAM==============================
