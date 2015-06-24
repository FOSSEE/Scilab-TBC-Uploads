// Chapter 1_Principles of Quantum Mechanics
//Caption_Probability of an electron tunneling through a potential barrier
//Ex_5//page 21
E=2;     //energy of electron in eV
Vo=20;    //potential barrier in eV
w=3;   //width of potential barrier in angstrom
m=9*(10^-31)
h=1.054*(10^-34)
c=1.6*(10^-19)
K=((2*m)*(Vo-E)*c/(h^2))^(1/2)
printf('Factor K is %fd m^-1 \n',K)
l=(-2*K*w*(10^-10))
a=%e^l
x=E/Vo;
T=16*x*(1-x)*a;
printf('Transmission coefficient i.e. the probability of electron to tunnel through the potential barrier is %fd \n',T)
