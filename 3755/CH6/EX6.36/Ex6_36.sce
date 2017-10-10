clear
//
//
//

//Variable declaration    
h=6.63*10^-34;        //planck's constant(J-sec)
e=1.602*10^-19;        //charge of electron(c)
L=0.2*10^-9;        //width(m)
n5=5;
En=10^3;          //energy(eV)
E5=230;     //energy of particle(eV)

//Calculations2
E5=230*e;        //energy(J)
E1=E5/n5^2;       //energy in 1st state(J)
m=h^2/(8*E1*L^2);     //mass of particle(kg)
n=sqrt(En*e/E1);      //quantum state

//Result
printf("\n mass of particle is %0.1f *10^-31 kg",m*10^31)
printf("\n quantum state is %0.1f ",n)
