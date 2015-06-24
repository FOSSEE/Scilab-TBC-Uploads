clc;
pathname=get_absolute_file_path('10_5_soln.sce')
filename=pathname+filesep()+'10_5_data.sci'
exec(filename)

// Solutions:
// minimum required pipe flow area,
A=(Q/v); //m^2
// minimum inside diameter,
ID=sqrt((4*A)/(%pi))*1000; //mm
// wall thickness,
t1=1; t2=2; //mm
// tube inside diameter,
D1=20; D2=24; //mm
// burst pressure,
BP1=(2*(t1/1000)*S)/(D1/1000); //MPa
// working pressure,
WP1=(BP1/FS)*10; //bars
printf(" \n The working pressure %.0f bars is not adequate (less than %.0f bars) so next case is considered,",WP1,p)
// burst pressure,
BP2=(2*(t2/1000)*S)/(D2/1000); //MPa
// working pressure,
WP2=(BP2/FS)*10;; //MPa
// ratio of inner diameter to thickness,
r2=D2/t2;
printf(" \n The working pressure %.0f bars is greater than %.0f bars) ,",WP2,p)


// Results:
printf("\n  Results:  ")
printf("\n The ratio of inner diameter to length is %.1f.",r2)
