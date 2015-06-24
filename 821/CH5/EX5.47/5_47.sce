acid=1/3;
ester=2/3;
alcohol=1/3;
water=2/3;
K=(ester*water)/(acid*alcohol);
printf('K value of the reaction=K=%f',K);
printf('\nIn finding no. of moles we end up with quadratic equation 3*x^2-24*x+20=0.\nupon solving the equation we get x=7.05 and 0.945.');
printf('\nThe first solution is not admissible since the maximum yield of the ester cannot exceed one mol of acetic acid.\nHence x=0.945 i.e yield of the ester is 94.5percent.');
printf('\nThis problem illustrates the influence of an increased concentration of the reactant\nSince using one mole of each reactant the yield of ester is only 66.66percent');
acid=1-x;
ester=x;
alcohol=1-x;
water=1+x;
printf('\nIn finding no. of moles we end up with quadratic equation 3*x^2-9*x+4=0.\nupon solving the equation we get x=2.457 and 0.5425.');
printf('\nThe first solution is not admissible,x=0.5425.\nyield of the ester in the presence of the product water has decreased from 66.67percent to 54.25percent.');
printf('\nother homogeneous equilibria in the liquid phase such as ionization of weak acids\nionization of weak bases,hydrolysis of salts,etc.,can be treated likewise.');


