
//refer Fig.1.13 in the textbook
//by applying KVL
//for mesh ABCDA, 7.45*i1-3.25*i2=10
//for mesh EFBAE, 8.55*i2-5.3*i3-3.25*i1=10
//for mesh HGBFEAH, 11.3*i3-5.3*i2=80
a=[7.45 -3.25 0;-3.25 8.55 -5.3;0 -5.3 11.3]
b=[10;10;80]
i=inv(a)*b
i1=i(1,1)
i2=i(2,1)
i3=i(3,1)
mprintf("Current in 6 ohm resistor=%f A, current in 3 ohm resistor=%f A", i3, i2-i1)
