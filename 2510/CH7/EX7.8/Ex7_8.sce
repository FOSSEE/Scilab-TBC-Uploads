//Variable declaration:
syms z
syms h
syms k

pi = %pi


T = 100*cos((pi*z)/(2*h))       //Temperature of solid slab

//Calculation:
DT = diff(T,z)                  //Temperature at z
Q = -k*(DT)                     //Heat flux in slab (Btu/s.ft^2)
disp(typeof(Q))
Q1 = subst(0,z,Q)               //Heat flux in slab at z =  Btu/s.ft^2)

Q2 = subst(h,z,Q)                //Heat flux in slab at z = h (Btu/s.ft^2)

//Result:
disp("The heat flux in slab is : ")
disp(Q)
disp("Btu/s.ft^2.")

disp("The heat flux in slab at z = 0 is : ")
disp(Q1)
disp("Btu/s.ft^2.")

disp("The heat flux in slab at z = h is :5  ")
disp(Q2)
disp(" Btu/s.ft^2.")
