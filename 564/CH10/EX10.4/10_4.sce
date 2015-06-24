pathname=get_absolute_file_path('10_4.sce')
filename=pathname+filesep()+'10_4data.sci'
exec(filename)
for i=1:3
    f(i)=(0.5*%pi*i/L)*(EI/(rho*A))^0.5;
end
printf("\nf1: %f",f(1));
printf("\nf2: %f",f(2));
printf("\nf3: %f",f(3));