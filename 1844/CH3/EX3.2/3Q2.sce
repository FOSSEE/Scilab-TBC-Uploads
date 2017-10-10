clc
//all are in m
// with 20 m chain 
L=20
L1= 20+0.10
l1=1200
l= l1 * (L1/L)

printf('True length of line = %f m\n',l)
//with 25m
L=25
l1=1212
L1= l * (L/l1)

x=25-L1

printf (' Thus 25 m chain was %f m too short',x)
