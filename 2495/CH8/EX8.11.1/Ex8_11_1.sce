clear
clc
k = [24.4,48.8,73.2,85.4]
E = [0.101,0.116,0.129,0.139]
l = log10(k./(100-k))
plot(l,E,'mo-')
[m,c]=reglin(l,E)
V=0.0603;//in V
n=V/m;//
printf('n=%.1f',n)

//page 460
