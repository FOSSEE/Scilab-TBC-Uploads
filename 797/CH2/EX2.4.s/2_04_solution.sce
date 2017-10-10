//Solution 2-4
WD=get_absolute_file_path('2_04_solution.sce')
datafile=WD+filesep()+'2_04_example.sci'
clc;
exec(datafile)
//conversion
T = T + 273; //[degree C] to [K]
//(a)
c = sqrt(k * R * T);
printf("Speed of sound in air at 30C is %1.0f m / s", c);
//(b)
Ma = V / c;
printf("\nMach number at diffuser inlet is %1.3f", Ma);
if Ma < 1 then
    printf("\nHence flow is subsonic");
elseif Ma == 1
    printf("\nHence flow is sonic");
else
    printf("\nHence flow is supersonic");
end
