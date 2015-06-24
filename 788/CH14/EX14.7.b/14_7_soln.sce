clc;
pathname=get_absolute_file_path('14_7_soln.sce')
filename=pathname+filesep()+'14_7_data.sci'
exec(filename)

// Solutions:
// volume of hydraulic cylinder,
V=(%pi/4)*L*(D^2); //in^3
// volume of cylinder in charged position,
V2=V/((p2/p3)-1); //in^3
// volume of cylinder in final position,
V3=(p2/p3)*V2; //in^3
// required size of accumulator,
V1=((p2*V2)/p1)/231; //gal
// rounding off the above answer,
V1=fix(V1)+(fix(floor((V1-fix(V1))*10))/10); //gal
// pump flow-rate with accumulator,
Q_pump_acc=((2*V)/231)/t_crush; //gpm
// rounding off the above answer
Q_pump_acc=fix(Q_pump_acc)+(fix(ceil((Q_pump_acc-fix(Q_pump_acc))*100))/100); //gpm
// pump hydraulic power with accumulator,
HP_pump_acc=(Q_pump_acc*p2)/1714; //HP
// pump flow-rate without accumulator,
Q_pump_no_acc=(V/231)/(t/60); //gpm
// pump hydraulic power without accumulator,
HP_pump_no_acc=(Q_pump_no_acc*p3)/1714; //HP

// Results:
printf("\n  Results:  ")
printf("\n The required size of accumulator is %.1f gal.",V1)
printf("\n The pump hydraulic horsepower with accumulator is %.2f HP.",HP_pump_acc)
printf("\n The pump hydraulic horsepower without accumulator is %.1f HP.",HP_pump_no_acc)
printf("\n The answer in the program is different than that in textbook. It may be due to no.s of significant digit in data and calculation")