T=300;//temperature in kelvin//
R=0.0821;//universal gas constant//
Ws=0.171;//Weight of Sucrose  in the solution in grams//
Ms=342;//Molecular weight of Sucrose in grams//
l=0.05;//volume of solution in litres//
ns=(Ws)/(Ms*l);//no. of moles of sucrose in the solution//
printf('Osmatic pressure being a colligative property depends only on the no. of mol of solute present and not on their nature.');
printf('\nNo. of moles of Sucrose in a litre solution=ns=%fmol per litre',ns);
Wg=0.18;//Weight of glucose  in the solution in grams//
Mg=180;//Molecular weight of glucose in grams//
ng=(Wg)/(Mg*l);//no. of moles of glucose in the solution//
printf('\nNo. of moles of Glucose in a litre solution=ns=%fmol per litre',ng);
Wu=0.06;//Weight of Urea in the solution in grams//
Mu=60;//Molecular weight of Urea in grams//
nu=(Wu)/(Mu*l);//no. of moles of Urea in the solution//
printf('\nNo. of moles of Urea in a litre solution=ns=%fmol per litre',nu);
c=ns+ng+nu;//total no of moles in a litre solution//
printf('\nTotal no. of moles in a litre solution=c=%fmol per litre',c);
OP=c*R*T;//Osmatic pressure in atms//
printf('\nOsmatic pressure of the solution at 300k=OP=%fatm',OP);
