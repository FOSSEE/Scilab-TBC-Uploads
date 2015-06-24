// Scilab code Ex1.15: Pg 20 (2008)
clc; clear;
Total_bill = 78.75;      // pounds
Standing_charge = 15.00;     // pounds
Units_used = 750;            // kWh
Cost_per_unit = ( Total_bill - Standing_charge )/Units_used;      // p
Cost_of_energy_used = 67.50;         // pounds
Total_bill = Cost_of_energy_used + Standing_charge;      // pounds
printf("\nThe cost per unit = %5.3f pounds or %3.1f p\nTotal bill = %5.2f pounds",Cost_per_unit,Cost_per_unit/1e-02,Total_bill);

// Result
// The cost per unit = 0.085  Pounds or 8.5 p
// Total bill = 82.50 pounds
