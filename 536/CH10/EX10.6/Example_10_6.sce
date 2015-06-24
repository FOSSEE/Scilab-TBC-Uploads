clear;
clc;

printf("Example 10.6\n");

//Diffusivity of CO2 in ethanol
D=4D-9;               //in m^2/s
t=100;                //Time in sec

//Solving all the integral as defined in the proces 
//as per described in the book
//a useful result is obtained

Cai=poly([0],'x');

y=[0 10^-3];

for i=1:2
    mole(i)=((2*sqrt(D*t/%pi)*exp(-y(i)^2/(4*D*t)))-(y(i)*erfc(y(i)/(2*sqrt(D*t)))));
end
ret=(mole(1)-mole(2))/mole(1);

printf("\nProportion retained is %.1f %%\n",ret*100);

//End