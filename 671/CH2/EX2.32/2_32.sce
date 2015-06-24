V8=2*8

//KVL
I1=(30-16)/10

//KCL at left node
I2=2-I1

//KVL middle mesh
I4=(10*I1-2*I2)/4
Vx=4*I4

//right node
Ix=I4-I2

disp(Vx)