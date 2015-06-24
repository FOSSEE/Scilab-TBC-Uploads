pathname=get_absolute_file_path('4_16.sce')
filename=pathname+filesep()+'4_16data.sci'
exec(filename)
disp("Vt=(2(Po-P)/D)^0.5","True velocity of airplane")
Vt=sqrt(2*(Po-P)/D);disp(Vt,"Vt=");
disp("Ve=(2(Po-P)/Ds)^0.5","Eqivalent airspeed of airplane")
Ve=sqrt(2*(Po-P)/Ds);disp(Ve,"Ve=");
printf("\Answer:\n")
printf("\n\True velocity of the airplane: %f m/s\n\n",Vt)
printf("\n\Equivalent airspeed of the airplane: %f m/s\n\n",Ve)
