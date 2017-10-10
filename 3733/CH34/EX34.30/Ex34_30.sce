// Example 34_30
clc;funcprot(0);
//Given data
// High voltage-Rs.450/kW per year + paise 35/kWh
// Low voltage-Rs.470/kW per year + paise 40/kWh
CC=1000;// Rs./kW
T_l=3/100;// Losses in the transformer
N=50;// Working weeks per year
P=1;// MW

//Calculation
Cl=1000;// Consumer load in kW
Rr=Cl/(1-T_l);// Required rating of transformer in kW
Ct=Cl*Rr;// Cost of transformer to the consumer in rupees
ID=(Ct/P)*(10/100);// Annual Interest and depriciation in rupees
// P=50*h; Power used during the year in hours
// N_l=Cl*P; Number of units consumed from low voltage side in kWh/year
// N_h=Rr*P; Number of units consumed from high voltage side in hours
function[X]=hours(y)
    X(1)=((Cl*470)+(((Cl*50*y(1))/P)*(40/100)))-((Rr*450)+(((Rr*50*y(1))/P)*(35/100))+ID);
endfunction
y=[10];
z=fsolve(y,hours);
h=z(1);// The number of working hours per week (hrs/week)
printf('\nThe number of working hours per week=%0.2f hrs/week',h);
// The answer vary due to round off error
