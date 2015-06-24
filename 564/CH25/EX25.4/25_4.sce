pathname=get_absolute_file_path('25_4.sce')
filename=pathname+filesep()+'25_4data.sci'
exec(filename)
clear
X1=a*tb*Ez1;
X2=b*ta*Ez2;
ez=Load/(2*X1+X2);
P1=ez*X1;
P2=ez*X2;
printf("\nP(flanges) %f N",P1);
printf("\nP(web) %f N",P2);