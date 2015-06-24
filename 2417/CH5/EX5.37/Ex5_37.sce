//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 5.37\n\n\n");
// Chapter 5 : Properties Of Liquids And Gases
// Problem 5.37  (page no. 220) 
// Solution

//The mass in the tank is constant,and the heat added will be the change in internal energy of the contents of the tank between the two states.The initial mass in     the tank is found as follows:
Vf=45; //volume of water //ft^2
vf=0.016715;
Vg=15; //Volume of steam //ft^2
vg=26.80;
mf=Vf/vf; //lbm
mg=Vg/vg; //lbm
total=mf+mg; //total mass
//The internal energy is the sum of the internal energy of the liquid plus vapor:
ug=1077.6;
uf=180.1;
Ug=mg*ug; //Btu
Uf=mf*uf; //Btu
Total=Ug+Uf; //total internal energy
printf("The total internal energy is %f Btu\n",Total);
//Because the mass in the tank is constant,the final specific volume must equal the initial specific volume,or
vx=(Vf+Vg)/(mf+mg); //ft^3/lbm
//But vx=vf+(x*vfg).Therefore using table A.2 at 800 psia,
vx=0.022282;
vf=0.02087;
vfg=0.5691-0.02087;
x=(vx-vf)/vfg;
printf("The final amount of vapor is %f lbm\n",x*total);  //x*total mass 
mg=x*total;
printf("The final amount of liquid is %f lbm\n",total-(x*total)); //total mass minus final amount of vapor 
mf=total-(x*total);
//The final internal energy is found as before:
ug=1115.0;
uf=506.6;
Ug=mg*ug; //Btu
Uf=mf*uf; //Btu
Total1=Ug+Uf;
difference=Total1-Total; //final internal energy-initial internal energy
//per unit mass heat added is,
printf("The heat added per unit is %f Btu/lbm\n",difference/total); //the difference of internal energy/total mass
