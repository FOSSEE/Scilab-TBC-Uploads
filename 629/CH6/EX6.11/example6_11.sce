clear
clc
//Example 6.11 PROPELLANT MASS RATIO FOR ACHIEVING ORBITAL VELOCITY
Vbo=7600; //orbital velocity[m/s]
Isp=3200; //specific impulse[m/s]
//Vbo=Isp*log(mi/mf)
mif=exp(Vbo/Isp) //mif=mi/mf
//mp=mi-mf
mpi=1-1/mif //mpi=mp/mi
printf("\n The ratio of propellant mass to initial mass to achieve orbital velocity = %.3f.\n",mpi)