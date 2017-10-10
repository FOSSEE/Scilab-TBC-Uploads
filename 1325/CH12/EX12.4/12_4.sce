//To find the total forces applied at point A and B
clc
//given
AB=12.5//in
IB=10.15//in
IA=10.75//in
IX=2.92//in
IY=5.5//in
w=3//lb
Fi=5//lb
Fa1=9//lb
Fb1=(Fa1*IA-w*IY-Fi*IX)/IB
//From the polygon of forces
Fa2=7.66//lb
Fb2=3.0//lb
Fa=(Fa1^2+Fa2^2)^(1/2)
Fb=(Fb1^2+Fb2^2)^(1/2)
printf("\nThe total force applied to the link AB at the pin A = Fa = %.2f lb\nThe total force applied to the link AB at the pin B = Fb = %.2f lb\n",Fa,Fb)
