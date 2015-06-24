clear
clc

V=33e3
L=10
Ce=.8
data=[
4e6 .8 10
2e6 .8 6
1e6 .8 8
]
rho=.0286*1e3
P=2000
q=0
for i=1:3
    I(i,1)=data (i,1)/(sqrt(3) * V * data(i,2))
    E(i,1)= I(i)^2 * rho*3* data (i,3) * 1e-3
    q=q+E(i)
end
Q=q*365*Ce

a=sqrt(Q/P)

mprintf("a=%.2f sq mm", fix(a*100)/100)
