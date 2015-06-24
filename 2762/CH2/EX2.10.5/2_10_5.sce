//Transport Processes and Seperation Process Principles
//Chapter 2
//Example 2.10-5
//Principles of Momentum Transfer and Overall Balances
//given data
D=0.01;//diameter of tube in m
G=9;// rate of flow of N through tube in kg/s.m2
mu=1.77/100000;//viscosity of gas
Re=D*G/mu;//reynolds number
p1=2.0265*100000;//entrance pressure
f=0.009;//friction factor for given Re
dl=200;//section of tube used in m
R=8314.3;//gas constant
T=298.15;//std temp given
M=28.02;//molecular weight of N2
p2=((p1^2)-((4*f*dl*G*G*R*T)/(M*D)))^0.5;//outlet pressure
mprintf("outlet pressure= %f Pa",p2)
//end
