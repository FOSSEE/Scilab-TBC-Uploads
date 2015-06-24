
//circuit has 4 nodes, viz, A, B, C and D
//node D is taken as reference node
//voltages at A, B and C be Va, Vb and Vc respectively
//applying KCL
//at node A, 7*Va-Vb-Vc=25
//at node B, -4*Va+19*Vb-10*Vc=0
//at node C, -4*Va-10*Vb+19*Vc=-40
a=[7 -1 -1;-4 19 -10;-4 -10 19]
b=[25;0;-40]
v=inv(a)*b
Va=v(1,1)
Vb=v(2,1)
Vc=v(3,1)
I=(Va-Vc)/5
mprintf("Current in 5 ohm AC branch=%f A from A to C", I)
//error in textbook answer
