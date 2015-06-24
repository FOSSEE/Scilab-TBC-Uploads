pathname=get_absolute_file_path('4_25.sce')
filename=pathname+filesep()+'4_25data.sci'
exec(filename)
T=0.37*x/Re^0.2;disp(T,"T=","T=0.37*x/Re^0.2","Thickness at trailing edge T:");
Df=q*S*Cf;disp(Df,"Df=","Df=q*S*Cf","Drag at top surface")
printf("\Answer:\n")
printf("\n\Thickness at trailing edge: %f m\n\n",T)
printf("\n\Total Drag: %f N",2*Df)
