//Fuels and Combustion//
//Example 8.15//
CR=7.8;//compression ratio for first case//
E1=1-(1/CR)^0.258;//Energy efficiency corresponding to CR value 7.8//
printf('Efficiency of the engine in the first case=E1=%f',E1);
CR=9.5;//compreesion ratio for second case//
E2=1-(1/CR)^0.258;//Energy efficiency corresponding to CR value 9.5//
printf('\nEfficiency of the engine in the second case=E2=%f',E2);
IE=E2-E1;//Increase in efficiency//
printf('\nIncrease in efficiency=IE=%f',IE);
PIE=IE*100/E2;//percentage of increase in efficiency//
printf('\nPercentage of increase in efficiency=PIE=%f',PIE);