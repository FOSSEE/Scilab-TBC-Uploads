//Chapter-4,Example 9,Page 95
clc;
close;

delta_H2= 2386   //enthalpy for.. yellow P---> H3PO4

delta_H3= 2113   //enthalpy for.. red P---> H3PO4

delta_HT = delta_H2- delta_H3   //enthalpy for...yellow P ---> red P

// According to Hess's Law... delta_H1 = delta_H2 - delta_H3

delta_HT = delta_H2 - delta_H3   // delta_H1 = delta_HT

printf('the enthalpy change of transition from yellow P to red P is %.f cals',delta_HT)
