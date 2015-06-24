pathname=get_absolute_file_path('15_1.sce')
filename=pathname+filesep()+'15_1data.sci'
exec(filename)
clear
af=(K^2)/(S^2 *alpha^2 *%pi);
Nf=(2/(C*(n-2)*((S*%pi^0.5)^n)))*((1/ai^((n-2)/2))-(1/af^((n-2)/2)));
printf("\naf: %f mm",af)
if(round(Nf)>Nf) then
    printf("\nNf: %f cycles",round(Nf));
else
    printf("\nNf: %f cycles",round(Nf)+1)
end
