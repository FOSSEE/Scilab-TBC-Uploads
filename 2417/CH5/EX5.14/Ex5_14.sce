//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 5.14\n\n\n");
// Chapter 5 : Properties Of Liquids And Gases
// Problem 5.14  (page no. 198) 
// Solution

//From Table3, we first obtain the properties at 337 psia and 460 F and then 337 psia and 470 F.
//The necessary interpolations are best done in tabular forms as shown:
//Proceeding with the calculation,at 460 F,
//  p    v                                     //  p    h
// 340  1.4448                                 // 340  1226.7
// 337  1.4595                                 // 337  1227.2
// 335  1.4693                                 // 335  1227.5
v=1.4696-(2/5)*(1.4693-1.4448);                h=1227.5-(2/5)*(1227.5-1226.7);
//ft^3/lbm //specific volume                   //Btu/lbm //enthaply

//And at 470 F,
//  p    v                                     //  p    h
// 340  1.4693                                 // 340  1233.4
// 337  1.4841                                 // 337  1233.9
// 335  1.4940                                 // 335  1234.2
v=1.4640-(2/5)*(1.4640-1.4693);                h=1234.2-(2/5)*(1234.2-1233.4);
//ft^3/lbm //specific volume                   //Btu/lbm //enthaply

//Therefore,at 337 psia and 465 F
//  t    v                                    //  t    h
// 470  1.4841                                // 470  1233.9
// 465  1.4718                                // 465  1230.7
// 460  1.4595                                // 460  1227.5
v=1.4595+(1/2)*(1.4841-1.4595);               h=1227.5+(1/2)*(1233.9-1227.5);
//ft^3/lbm //specific volume                  //Btu/lbm //enthaply
printf("At 465 F and 337 psia,specific volume=%f ft^3/lbm and enthalpy=%f Btu/lbm\n",v,h);

