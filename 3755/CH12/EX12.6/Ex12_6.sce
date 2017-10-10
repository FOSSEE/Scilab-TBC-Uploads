clear
//
//
//

//Variable declaration
c=3*10^8;   //velocity of matter wave(m/s)
h=6.62*10^-34;    //plank's constant(Js)
lamda=6*10^-7;    //wavelength(m)
e=1.6*10^-19;     //charge(coulomb)
k=8.6*10^-5;
T=300;        //temperature(K)

//Calculation
E=h*c/(lamda*e);    //energy(eV)
N=-E/(k*T);            //population ratio

//Result
printf("\n population ratio is e^ %0.3f ",N)
