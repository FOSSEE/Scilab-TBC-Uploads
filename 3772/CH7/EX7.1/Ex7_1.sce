// Problem no 7.1,Page no.183

clc;clear;
close;

G=84 //Gpa //Modulus of Rigidity
N=110 //no. of revolution
//d*D**-1=0.6 //Ratio of inner diameter to outer diameter
sigma_s=63 //MPa //shear stress
L=3 //m //Length of shaft
P=590 //KW //Power

//Calculation

//P=2*%pi*N*T_mean*60000**-1 //KW //Power
T_mean=P*60000*(2*%pi*N)**-1 //N*m //Mean Torque

//I_p=p*32**-1*(D**4-d**4)

//After substituting value of d in above equation we get
//I_p=0.0272*%pi*D**4 //m**4 //Polar moment of Inertia

T_max=1.2*T_mean //N*m //Max torque

//Using Relation
//T_max*T_p**-1=sigma_s*R**-1=G*theta*L**-1 

//After substituting values and simplifying we get

D=(5.7085*10**-3)**0.3333 //m //Diameter of shaft

theta=1.4*%pi*180**-1 //radians

//theta=((T_max*L)*(G*10**9*I_p)) //radians

//After substituting values and simplifying we get
D_1=(1.0513*10**-3)**0.25

//Result
printf("The Minimum external diameter is %.2f",D_1);printf(" m")
