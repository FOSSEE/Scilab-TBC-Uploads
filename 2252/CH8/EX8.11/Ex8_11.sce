
function[r,theta]=rect2pol(A)
    x=real(A)
    y=imag(A)
    r=sqrt(x^2+y^2)
    theta=atand(y/x)
endfunction
function[r]=mag(A)
    x=real(A)
    y=imag(A)
    r=sqrt(x^2+y^2)
endfunction
j=%i
//using Maxwell's mesh analysis
//refer Fig.8.14 in the textbook
//considering mesh FDCEF, (18+8*j)*I1-(10+8*j)*I2=24
//considering mesh ABCDA, (10+8*j)*I1-(14+10*j)*I2=0
a=[18+8*j -(10+8*j);10+8*j -(14+10*j)]
b=[24;0]
x=inv(a)*b
I1=x(1,1)
I2=x(2,1)
[I2 theta]=rect2pol(I2)
mprintf("By Maxwell Mesh Analysis, current in branch AB of the circuit shown is %f A, lagging the applied voltage by %f degrees\n",I2, -theta)
//using thevenin's theorem
//refer Fig.8.14(a),(b) and (c)
Zth=8*(10+8*j)/(8+10+8*j)+(-4*j)//thevenin's impedance
//for calculating the equivalent Thevenin's voltage Vth, I1 be the current flowing in the branch CD
I1=24/(8+10+8*j)
Vth=I1*(10+8*j)//equivalent thevenin's voltage
I=Vth/((4+6*j+Zth))
[I theta]=rect2pol(I)
mprintf("By Thevenin Theorem, current in the branch AB is %f A lagging the voltage by %f degrees\n",I,-theta)
