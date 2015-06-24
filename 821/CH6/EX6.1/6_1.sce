MW=249.6;//molecular weight of CuSO4.5H2O in grams//
w=0.3120;//weight of CuSO4.5H2O in grams//
V=0.25;//volume of the solution in litres//
printf('From Equation (a) 2 mol of CuSO4.5H2O liberates 1 mol of I2,i.e. 2 equivalents.\nHence the equlivalent weight of CuSO4.5H2O=mol.wt/1.');
printf('\nFrom equation (b) the equivalent weight of CuSO4.5H2O is mol.wt/2 since 1mol of CuSO4.5H2O reacts with 2 mol of OH-,i.e 2 equivalents.');
W=w/V;//weight of CuSO4.5H2O in one litre solution in grams//
printf('\nWeight of CuSO4.5H2O in a litre of the solution=W=%fgrams.',W);
Na=W/MW;//Normality of the solution for (a)//
printf('\nNormality of the solution for (a)=Na=%f',Na);
Nb=W*2/MW;//Normality of the solution for (b)//
printf('\nNormality of the solution for (b)=Nb=%f',Nb);
printf('\nIn the first case 1ml of the solution contains 5*10^-3equivalents or 5 equivalents of CuSO4.5H2O,\nand in the second case 1ml of the solution will contain 10m eq of CuSO4.5H2O.');
