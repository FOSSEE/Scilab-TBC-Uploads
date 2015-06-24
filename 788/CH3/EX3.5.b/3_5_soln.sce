clc;
pathname=get_absolute_file_path('3_5_soln.sce')
filename=pathname+filesep()+'3_5_data.sci'
exec(filename)

// Solution:
// Therfore, Force acting on rod of pump cylinder,
F_rod=(8/2)*Fh; //lb
// Area of piston of pump cylinder,
Ap=(%pi/4)*Dp^2;//in^2
// Area of piston of load cylinder,
Al=(%pi/4)*Dl^2; //in^2
// Pump cylinder discharge pressure,
p=round(F_rod/Ap); //psi
// Load carrying capacity,
F_load=p*Al; //lb
// Therefore, No.s of Cycles,
Noc=(Al*Sl)/(Ap*Sp);
// Output power,
outpw=((F_load*(Sl/12))/Noc); //ft.lb/s
outpw_HP=outpw/550; //HP
// Assuming efficiency 80 %
eta=0.8;
outpw_HP2=eta*outpw_HP; //HP

// Results:
printf("\n  Results:  ") 
printf("\n Therefore %.0f lb of load can be lifted",F_load)
printf("\n The answer in the program is different than that in textbook. It may be due to no.s of significant digit in data and calculation")
printf("\n Therefore %.1f no.s of cycles are required to lift the load 10 in.",Noc)
printf("\n The answer in the program is different than that in textbook. It may be due to no.s of significant digit in data and calculation")
printf("\n Input power when efficiency is 100 percent is %.3f HP",outpw_HP)
printf("\n Input power when efficiency is 80 percent is %.3f HP",outpw_HP2)

