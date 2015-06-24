pathname=get_absolute_file_path('20_1.sce')
filename=pathname+filesep()+'20_1data.sci'
exec(filename)
L25=(L16*L12+L34*L23)/(L12+L23);
B1=A+ (t16*L16/6) +(t12*L12/6)*(2+(L25/L16));
B6=B1;
B2= 2*A + (t12*L12/6)*(2+(L16/L25))+(t25*L25/6) +(t23*L23/6)*(2+(L34/L25));
B5=B2;
B3=A + (t23*L23/6)*(2+(L25/L34)) + (t34*L34/6);
B4=B3;
printf("\nB1 = B6 = %f mm^2",B1);
printf("\nB2 = B5 = %f mm^2",B2);
printf("\nB3 = B4 = %f mm^2",B3)