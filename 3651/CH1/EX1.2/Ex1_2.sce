//Initialisation of variables
clc

d=((1.98)*10**-29)*1/3;        //dipole moment
b=(0.92);                      //bond length
EC=d/(b*10**-10);              //Effective charge

//Result
printf('Effective charge =%0.2f *10**-29 coulomb',((EC*10**19)))
