//Acceptor Impurity Doping in Silicon

clear;
clc;

printf("\tDesign Example 18.1\n");

e=1.6D-19;                 //Charge on electron in Coulomb
p=[10^22 10^21 8D21];      //Conc. of holes     m^-3
uh=[0.04 0.045 0.04];      //Mobility of holes

for i=1:3
    sigma(i)=p(i)*e*uh(i);
end

disp('(Ohm-m)^-1',sigma(3),'conductivity is','m^2/V-s',uh(3),'m^-3',p(3),'For hole conc and mobility');

Na=6.023D23;              //Avogadro no.
den_Si=2.33D6;            //Density of silicon in g/m^3
A_Si=28.09;               //Atomic weight of silicon

N_Si=Na*den_Si/A_Si;


Ca=p(3)/(p(3)+N_Si)*100;

printf("\nThus, Silicon material must contain %.1f * 10^-5 %% B,Al,Ga or In\n",Ca/10^-5);

//End