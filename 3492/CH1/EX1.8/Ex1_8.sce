clc
//Chapter1
//Ex_1.8
//Given
a=1/%inf
b=-1/1
c=2/1
p = int32([1,1,1])
// 1/%inf = 0  ; (0/1 -1/1 2/1) hence lcm is taken for [1 1 1]
LCM = lcm(p)
h=a*double(LCM)
k=b*double(LCM)
l=c*double(LCM)
 mprintf('miller indices = %d %d %d',h,k,l)
