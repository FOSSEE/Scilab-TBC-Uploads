clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 2.13
//Caption : Program to Find the time for a certain Temperature Drop

//Given values
M=190;//Mass=190Kg
T0=333.15;//Temperature=333.15K(60`C)
m=0.2;//Steady rate of mass(Kg/s)
T=308.15;//Temperature=308.15K(35`C)
T1=283.15;//Temperature=283.15K(10`C)

//Solution
//Using the Eqn (2.29)
t=approx(-(M/m)*log((T-T1)/(T0-T1)),1);//s
disp('s',t,'Time Taken for temperature of water to drop from 333.15K to 308.15K')
t=round(t/60);//min
disp('min',t,'Time Taken for temperature of water to drop from 333.15K to 308.15K')

//End