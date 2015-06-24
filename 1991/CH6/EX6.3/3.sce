clc
clear
//input
iw=4.5 //current
vw=5.2 //pd of water
mw=6*10^-2 //flow of water
cw=4.18*10^3 //heat capacity of water
ix=5.5//current of x
iv=7.7//pd of x
im=18*10^-2//flow of x
//calculation
x=(iw*vw)-((mw*cw*5)/60)//rate of heat loss
cx=(6*4180)/18 +1263//specific heat capacity of x
//output
printf("the rate of heat loss is %3.3f W",x)
printf("\n the specific heat of x is %3.3e Jkg^-1K^-1",cx)
