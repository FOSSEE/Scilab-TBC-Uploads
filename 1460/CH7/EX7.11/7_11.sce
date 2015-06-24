clc
//initialization of variables
P1=100 //lb/in^2
P2=16 //lb/in^2
T1=500+460 //R
eta=0.996
//calculations
disp("from appendix table 4")
ht1=1279.1
st1=1.7085
hg=1152
sg=1.7549
hfg=969.7
sfg=1.4415
ht2=hg-(1-eta)*hfg
st2=sg-(1-eta)*sfg
WbyJ=ht1-ht2
W=WbyJ*778
ds=st2-st1
//results
printf("Work done = %d ft-lb/lbm",W)
printf("\n Change in enrtropy = %.4f B/lbm R",ds)
