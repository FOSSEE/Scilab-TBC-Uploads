pathname=get_absolute_file_path('25_1.sce')
filename=pathname+filesep()+'25_1data.sci'
exec(filename)
clear
A=(L1*(Bc+Be1+Be2));
E1= ((Ec*L1*Bc)+(Ee*L1*(Be1+Be2)))/A;
S1=Load/A;
e1=S1/E1;
dell=e1*L;
v1= ((vc*L1*Bc)+(ve*L1*(Be1+Be2)))/A;
et=-e1*v1;
delt=-et*(Bc+Be1+Be2);
Se=e1*Ee;
Sc=e1*Ec;
printf("\nlengthening of the bar: %f mm",dell);
printf("\nreduction in thickness: %f mm",delt);
printf("\nσm(epoxy):  %f N/mm^2",Se);
printf("\nσf(carbon): %f N/mm^2",Sc);