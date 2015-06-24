// chapter 6 , Example6 5 , pg 172
d=8900    //density   (in Kg/m^3)
M=63.5     //atomic weight 
T=10^-14   //relaxation time(in s)
N=6.022*10^23    //Avogadros  constant
N1=10^3        //number of free electrons per atom
e=1.6*10^-19    //electronic charge   (in  C)
me=9.11*10^-31    //mass of electron  (in Kg)

n=(N*d*N1)/M   
sigma =(n*e^2*T)/me    //electrical  conductivity
printf("Electrical conductivity(in ohm m)=")
disp(sigma)
