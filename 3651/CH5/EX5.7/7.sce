//Variable declaration
chi=0.5*10**-5;    //magnetic susceptibility
H=10**6;     //field strength(ampere/m)
mew0=4*%pi*10**-7;

//Calculation
I=chi*H;     //intensity of magnetisation(ampere/m)
B=mew0*(I+H);    //flux density in material(weber/m**2)

//Result
printf('intensity of magnetisation is  %0.3f  ampere/m   \n',I)
printf('flux density in material is %0.3f weber/m**2 \n',(B))