// Example 6.3, page no-372
clear
clc
//(a)
b=20
a=4
op=16
wt_l1=25
t_op=((b-a)/100)*(100-75)+4
printf("(a)\nWater level=+25cm\nTransmitter output = %d mA",t_op)

//(b)
wt_l2=-25
t_op2=((b-a)/100)*(100-25)+4
printf("\n(b)\nWater level=-25cm\nTransmitter output = %d mA",t_op2)

//(c)
t_op3=12
H=(100/(b-a))*(12-4)
printf("\n(c)\nHead Applied = %d cm\nLevel corresponding to 50 cm head =0 cm ",H)
