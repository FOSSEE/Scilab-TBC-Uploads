//CHAPTER 8- DIRECT CURRENT MACHINES
//Example 20

disp("CHAPTER 8");
disp("EXAMPLE 20");

//VARIABLE INITIALIZATION
v_t=250;                    //in Volts
I_a1=20;                    //in Amperes
N1=1000;                    //in rpm
r_a=0.5;                    //in Ohms
drop=1;                     //brush contact drop in Volts
ratio=1.5;                  //N2:N1=1.5
phi1=1;                     //it is an assumption

//SOLUTION
E_1=v_t-(I_a1*r_a)-(2*drop);
//solving the quadratic equation directly,
a=1;
b=-496;
c=14280;
D=b^2-(4*a*c);
x1=(-b+sqrt(D))/(2*a);
x2=(-b-sqrt(D))/(2*a); 
if(x1<40)
I_a2=x1;
else if(x2<40)
I_a2=x2;
end;
phi2=(I_a1/I_a2)*phi1;
phi=(1-phi2)*100;
disp(sprintf("The flux to be reduced is %f %% of the main flux",phi));

//END
