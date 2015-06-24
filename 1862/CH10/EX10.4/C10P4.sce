clear
clc
//to find centripital force austronautshould apply at distance 50 m from spacecraft
//to find centripital force austronautshould apply at distance 5 m from spacecraft

//Given:
//mass of austronaut
M = 120//in kg
//length of cord
ri = 180//in meters
// initial tangential velocity acquired by astronaut
vi = 2.5//in m/s

//Solution:
//appiying conservation of angular momentum
//initially required centripital force
F = (M*vi^2)/ri//in N
//when astonaut is at a distance of 50 m from spacecraft
r1 = 50//in meters
//velocity at this stage
v = (vi*ri)/r1//in m/s
//centripital force
f = (M*v^2)/r1//in N

printf ("\n\n Initially required centripital force F = \n\n %.1f N" ,F);
printf ("\n\n Tangential speed v = \n\n %.1f m/s" ,v);
printf ("\n\n Centripital force austronautshould apply at distance 50 m from spacecraft f = \n\n %3i N",f);
