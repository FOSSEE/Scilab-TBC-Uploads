pathname=get_absolute_file_path('12_1.sce')
filename=pathname+filesep()+'12_1data.sci'
exec(filename)
clear
Ar=(%pi*d^2)/4;
b=((2*Ar*Ls)/(t*Lt))+d;
printf("\nb: %f",b);