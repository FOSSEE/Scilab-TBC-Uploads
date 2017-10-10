//Chapter 10:Traction Drives
//Example 2
clc;

//Variable Initialization
M=100      //mass of each motor armature in tonne
Me=100
Tm=5000    //torque of each motor in N-m
Da=0.5     //average diameter of each motor in m
m=450      //mass of each wheel in kg
R=0.54     //radius of each wheel tread in m
N=4        //number of DC motors 
r=25       //train resistance N/tonne
a=0.25     //gear ratio 
nt=0.98    //gear transmission efficiency
G=50       //up gradient
Vm=100     //speed in kmph

//Solution
Ft=nt*Tm*N/a/R     //Tractive efforts required to move the train
alpha=(Ft-(9.81*M*G+M*r))/(277.8*1.1*Me)  //accelaration in metre per second
t=Vm/alpha         //time taken to attain speed of Vm in sec

//Result
mprintf("\n Time taken to reach a speed of 100kmph is : t=%.1f sec",t)
