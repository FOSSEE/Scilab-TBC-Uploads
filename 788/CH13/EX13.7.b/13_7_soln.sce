clc;
pathname=get_absolute_file_path('13_7_soln.sce')
filename=pathname+filesep()+'13_7_data.sci'
exec(filename)

// Solution:
// required size of a receiver before compressor resumes operation,
Vr=((14.7*t*(Qr-0))/(p_max-p_min))*7.48; //gal
// required size of a receiver when compressor is running,
Vr_run=((14.7*t*(Qr-Qc))/(p_max-p_min))*7.48; //gal

// Results:
printf("\n  Results:  ")   
printf("\n The required size of a receiver before compressor resumes operation is %.0f gal.",Vr)
printf("\n The required size of a receiver when compressor is running %.0f gal.",Vr_run)
