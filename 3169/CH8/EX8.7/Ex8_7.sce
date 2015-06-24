//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear all;
//example 8.7
//calculation of sparkover voltage and the arrester current

//given data
Xs=400//surge impedance(in ohm)
Xv=1000//surge voltage(in kV)

//calculation
//for line terminated
Iam=2*Xv/Xs//maximum arrester current
//as Iam = 5 kA   from graph Vd = 330 kV
Vd=330//sparkover voltage(in kV)
Vso=Vd+(Vd*5/100)
//for continuous line
Iamn=Xv/Xs//maximum arrester current
//as Iamn = 2.5 kA   from graph   Vdn = 280 kV
Vdn=280//sparkover voltage(in kV)
Vson=Vdn+(Vdn*5/100)

printf('The sparkover voltage for terminated line is %d kV',Vso)
printf('\nThe arrester current for terminated line is %d kA',Iam)
printf('\nThe sparkover voltage for continuous line is %d kV',Vson)
printf('\nThe arrester current for continuous line is %3.1f kA',Iamn)
//values of sparover voltages are
//for terminated line = 346 kV
//for continuous line = 294 kV
