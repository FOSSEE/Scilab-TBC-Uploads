clc;
pathname=get_absolute_file_path('14_10_soln.sce')
filename=pathname+filesep()+'14_10_data.sci'
exec(filename)

// Solutions:
// volume of hydraulic cylinder,
V=(%pi/4)*L*((D/1000)^2); //m^3
// volume of cylinder in charged position,
V2=V/((p2/p3)-1); //m^3
// volume of cylinder in final position,
V3=(p2/p3)*V2; //m^3
// required size of accumulator,
V1=floor(((p2*V2)/p1)*1000); //L
// pump flow-rate with accumulator,
Q_pump_acc=(2*V*1000)/(t_crush*60); //L/s
// pump hydraulic power with accumulator,
kW_pump_acc=(Q_pump_acc*10^-3*p2*10^5)/1000; //kW
// pump flow-rate without accumulator,
Q_pump_no_acc=V/t; //L/s
// pump hydraulic power without accumulator,
kW_pump_no_acc=(Q_pump_no_acc*10^-3*p3*10^5); //kW

// Results:
printf("\n  Results:  ")
printf("\n The required size of accumulator is %.0f L.",V1)
printf("\n The pump hydraulic horsepower with accumulator is %.2f kW.",kW_pump_acc)
printf("\n The pump hydraulic horsepower without accumulator is %.1f kW.",kW_pump_no_acc)