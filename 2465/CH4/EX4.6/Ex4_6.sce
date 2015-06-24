//Chapter-4,Example 6,Page 93
clc;
close;

delta_H1= -337.2    // Heat combustion for ethylene 

delta_H2=-68.3    //  Heat combustion for hudrogen

delta_H3= 372.8    // Heat combustion for ethane

//Given reaction is...
//  C2H4(g) +H2(g) ---> C2H6(g)

delta_H= delta_H1 + delta_H2 +delta_H3

printf('the heat combustion for given reaction is %.2f Kcal',delta_H)


