//(7.3)    Water initially a saturated liquid at 100C is contained in a piston–cylinder assembly. The water undergoes a process to the corresponding saturated vapor state, during which the piston moves freely in the cylinder. For each of the two processes described below, determine on a unit of mass basis the change in exergy, the exergy transfer accompanying work, the exergy transfer accompanying heat, and the exergy destruction, each in kJ/kg. Let T0 = 20C, p0 = 1.014 bar. (a) The change in state is brought about by heating the water as it undergoes an internally reversible process at constant temperature and pressure. (b) The change in state is brought about adiabatically by the stirring action of a paddle wheel.


//solution

//variable initialization
T = 373.15                                               //initial temperature of saturated liquid in kelvin
T0 = 293.15                                              //in kelvin
P0 = 1.014                                               //in bar


//part(a)
//from table A-2
ug = 2506.5                                              //in kj/kg
uf = 418.94                                              //in kj/kg
vg = 1.673                                               //in m^3/kg
vf = 1.0435*10^(-3)                                              //in m^3/kg
sg = 7.3549                                              //in kj/kg.k
sf = 1.3069                                              //in kj/kg.k

deltae = ug-uf + P0*10^5*(vg-vf)/(10^3)-T0*(sg-sf)

//exergy transfer accompanying work
etaw = 0                                                 //since p = p0

//exergy transfer accompanying heat
Q = 2257                                                 //in kj/kg,obtained from example 6.1
etah = (1-(T0/T))*Q

//exergy destruction
ed = 0                                                   //since the process is accomplished without any irreversibilities

printf('part(a)the change in exergy in kj/kg is:\n\t deltae = %f ',deltae)
printf('\nthe exergy transfer accompanying work in kj/kg is:\n\t etaw = %f',etaw)
printf('\nthe exergy transfer accompanying heat in kj/kg is:\n\t etah = %f',etah)
printf('\nthe exergy destruction in kj/kg is:\n\t ed = %f',ed)


//part(b)
Deltae = deltae                                          //since the end states are same 
Etah = 0                                                 //since process is adiabatic
//exergy transfer along work
W = -2087.56                                             //in kj/kg from example 6.2
Etaw = W- P0*10^5*(vg-vf)/(10^3)
//exergy destruction
Ed = -Deltae-Etaw

printf('\n\n\npart(b)the change in exergy in kj/kg is:\n\t Deltae = %f ',Deltae)
printf('\nthe exergy transfer accompanying work in kj/kg is:\n\t Etaw = %f',Etaw)
printf('\nthe exergy transfer accompanying heat in kj/kg is:\n\t Etah = %f',Etah)
printf('\nthe exergy destruction in kj/kg is:\n\t Ed = %f',Ed)






