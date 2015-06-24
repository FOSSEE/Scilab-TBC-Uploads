pathname=get_absolute_file_path('4_15.sce')
filename=pathname+filesep()+'4_15data.sci'
exec(filename)
disp("V2 propertional to (P2-P1)^0.5","velocity in test section is propertional to square root of pressure difference")
V2=(40)*2^(0.5);disp(V2,"velocity after pressure difference is doubled is squareroot 2 times 40")
disp("(2(P1-P2)/(D(1-(A2/A1)^2)))^0.5=(2*(Dp)/(D*(1-(1/R)^2)))^0.5","Airflow velocity at test section V3=");
V3=(2*(Dp)/(D*(1-(1/R)^2)))^0.5;disp(V3,"V3=");
printf("\Answer:\n")
printf("\n\Airflow velocity in the test section after doubling pressure difference: %f m/s\n\n",V2)
printf("\n\Airflow velocity in the test section after doubling contraction ratio: %f m/s\n\n",V3)

