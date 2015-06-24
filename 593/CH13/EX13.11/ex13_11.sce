clear;
//clc();

// Example 13.11
// Page: 366
printf("Example-13.11  Page no.-366\n\n");

//***Data***//
T = 273.15+25;//[K] Temperature
P = 11.38;//[torr] Pressure

// Formation of the dimer from monomer in the gas phase follows the reaction 
// 2*HAc = (HAc)2

// From the equation 13.BF(page 366) given in the book
// K = (P*y_HAc_2)/(P*y_HAc)^(2) , where 'y_HAc_2' is mol fraction of dimer and 'y_HAc' is mol fraction of monomer
// and 
// log10(K) = -10.4184 + 3164/T , so 
K = 10^(-10.4184 + 3164/T);//[1/torr]

//  Thus 
// y_HAc_2 = K*(P*y_HAc)^(2)/P
// Since, (y_HAc + y_HAc_2) = 1
// y_HAc_2 = K*(P*(1-y_HAc))^(2)/P

// Solving for y_HAc_2
deff('[y]=f(y_HAc_2)','y = K*(P*(1-y_HAc_2))^(2)/P-y_HAc_2');
y_HAc_2 = fsolve(0,f); 
// So
y_HAc = 1-y_HAc_2;

printf("Mole fraction of the monomer in the vapour phase is %f\n",y_HAc);
printf("Mole fraction of the dimer in the vapour phase is   %f",y_HAc_2);

