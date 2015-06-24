clear
clc

//Example 9.2
disp('Example 9.2')

mu=[0.5 0.8 0.2]; //population means of z y x
S=[0.01 0.020 0.005];//population std dev of z y x

z=[0.485]; //steady state values
y=[0.825];
x=0.205;

F=4;D=2;B=2; //flow rates

Ec=F*z-D*y-B*x;

disp(Ec,"Ec=")

sigma_Ec=sqrt(F^2*S(1)^2+D^2*S(2)^2+B^2*S(3)^2)

disp(sigma_Ec,"sigma_Ec")



Z=(Ec-0)/sigma_Ec;

disp(Z,"Z=");

[P,Q]=cdfnor("PQ",0.120,0,sigma_Ec);

//Since P is close to 1, we use Q

Probability=1-2*Q;

disp(Probability,"Probability of abnormal event=")
