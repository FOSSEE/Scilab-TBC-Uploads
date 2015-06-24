clc
clear
//Input data
Pm=7;//The mean effective pressure of a diesel cycle in bar
r=12;//The compression ratio
P1=1;//Initial pressure in bar
g=1.4;//Isentropic index

//Calculations
function[f] = F(x);//function definition
    f = 45.4*x- 12*x^1.4 -64.2;
endfunction
x = 1;//Initial guss
function[z] = D(x)//Derivative
    z= 3*x^2 - 3;
endfunction
y = fsolve(x,F, D);
C=y;//The cut off ratio 
na=[1-(1/(r^(g-1)))*[((C^g)-1)/(g*(C-1))]]*100;//Air standard efficiency

//Output 
printf('The cut off ratio = %3.1f \n  The air standard efficiency = %3.2f percent ',C,na)

