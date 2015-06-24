clc;
pathname=get_absolute_file_path('5_10_soln.sce')
filename=pathname+filesep()+'5_10_data.sci'
exec(filename)

// Solutions:
// Pump input power,
IP=Ta*N/9550; //kW
// Electric motor input power,
EIP=IP/(eta_o/100); //kW
// rounding off the above answer
EIP=fix(EIP)+(fix(round((EIP-fix(EIP))*10))/10); //kW
// Yearly cost of electricity,
Yce=EIP*OT*coe; //$/yr
// Total kW loss,
kWL=((1-(eta_o/100))*EIP)+((1-(eta_l/100))*IP); //kW
// rounding off the above answer
kWL=fix(kWL)+(fix(round((kWL-fix(kWL))*10))/10); //kW
// Yearly cost due to inefficiencies,
Yci=(kWL/EIP)*Yce; //$/yr

// Results:
printf("\n  Results:  ")
printf("\n The yearly cost of electricity is %.0f $/yr.",Yce)
printf("\n The yearly cost of electricity due to inefficiencies is %.0f $/yr.",Yci)


