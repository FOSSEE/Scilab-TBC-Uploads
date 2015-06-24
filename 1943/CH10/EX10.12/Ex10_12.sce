
clc
clear
//Input data
P=10000//Power in kW
h=25//Head in m. In textbook it is given wrong as 2 m
N=135//Speed in rpm
h1=20//Head in m

//Calculations
Ns=((N*sqrt(P))/h^(5/4))//Specific speed
N1=sqrt(h1/h)*N//Speed in rpm
P2=P/(h/h1)^(3/2)//Power in kW

//Output
printf('Specific speed is %3.1f \n Normal speed is %3.1f rpm \n Output under a head of %i m is %3.0f kW',Ns,N1,h1,P2)
