clc;
pathname=get_absolute_file_path('5_2_soln.sce')
filename=pathname+filesep()+'5_2_data.sci'
exec(filename)

// Solutions:
// Volumetric Displacementis is given by,
Vd=(%pi/4)*(((Do/1000)^2)-((Di/1000)^2))*(L/1000); //m^3/rev
// Actual Flow-rate,
Qa=Vd*N*(eta_v/100); //m^3/min
Qa_lpm=Qa*1000; //Lpm
// rounding off the above answer
Qa_lpm=fix(Qa_lpm)+(fix(ceil((Qa_lpm-fix(Qa_lpm))*10))/10); //m^3/min

// Results:
printf("\n  Results:  ")
printf("\n The volumetric efficiency of Gear Pump  is %.1f Lpm.",Qa_lpm)

