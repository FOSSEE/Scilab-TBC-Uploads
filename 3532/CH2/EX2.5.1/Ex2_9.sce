clc
clear
mprintf('Mechanical vibrations by G.K.Grover\n Example 2.5.1\n')
//given data
k1=2000 //stiffness of spring 1 in N/m
k2=1500 //stiffness of spring 2 in N/m
k3=3000 //stiffness of spring 3 in N/m
k4=500 //stiffness of spring 4 in N/m
k5=500 //stiffness of spring 5 in N/m
fn =10 //natural frequency of system in Hz
//calculations
Ke1=1/((1/k1)+(1/k2)+(1/k3)) // effective stiffness of  top 3 springs in series in N/m
Ke2=k4+k5 // effective stiffness of lower 2 springs in parallel in N/m
Ke=Ke1+Ke2 //  total effective stiffness of sring system
M=Ke/(2*%pi*fn)^2 //reqired mass such that the natural frequency of system is 10 Hz  (in Kg)
//output
mprintf(' The mass required such that the natural frequency of system is 10 Hz\n is %4.4f Kg',M)
