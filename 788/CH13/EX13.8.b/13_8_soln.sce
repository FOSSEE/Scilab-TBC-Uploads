clc;
pathname=get_absolute_file_path('13_8_soln.sce')
filename=pathname+filesep()+'13_8_data.sci'
exec(filename)

// Solution:
// theoretical horsepower,
HP_theo=((p_in*Q)/65.4)*((p_out/p_in)^0.286-1); //HP
// actual horsepower,
HP_act=HP_theo/(eff/100); //HP


// Results:
printf("\n  Results:  ")   
printf("\n The actual power required to drive a compressor is %.0f HP.",HP_act)
