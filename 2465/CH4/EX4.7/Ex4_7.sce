//Chapter-4,Example 7,Page 94
clc;
close;

delta_H1= 104    //for reaction.. H2(g)---> 2H(g)

delta_H2= 120/2    //for reaction.. (1/2)O2(g)---> O(g)

delta_H3= -58    //for reaction.. H2(g) + (1/2)O2(g)---> H2O(g)

delta_H=delta_H1 + delta_H2 - delta_H3

//there are two O-H bonds 
//therefore for one bond required heat energy is half of delta_H

printf('the O-H bond energy is %.f Kcal',delta_H/2)
