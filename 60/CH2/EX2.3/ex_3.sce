//Example 2.3
         //Using Newton formula

x0=1
x1=4
x2=6
 P2(1)=1.5709
 P2(4)=1.5727
 P2(6)=1.5751
 K1=[P2(1)-P2(4)]/(1-4)
 K2=[P2(4)-P2(6)]/(4-6)
 K3={K1-K2}/(1-6)
           // Where as K1 = K[1,4] , K2 =[4,6] ,K3 = [1,4,6]
            deff('[y]=f(x)','y=P2(x0)+K1*(x-x0)+K3*(x-x0)*(x-x1)')
            funcprot(0)
x=poly(0,"x")
y=P2(x0)+K1*(x-x0)+K3*(x-x0)*(x-x1)
x=3.5
f