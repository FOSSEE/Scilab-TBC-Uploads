//pathname=get_absolute_file_path('4.12.sce')
//filename=pathname+filesep()+'4.12-data.sci'
//exec(filename)
//Heat drawn from 400 K reservoir(in kJ):
Q1=5000
//Work output(in kJ):
W=840
//Value of heat from heat engine(in kJ):
Q2=3*(Q1/2-W)
//Value of heat to heat engine(in kJ):
Q3=Q1-W-Q2
printf("\nRESULTS\n")
printf("\nQ2 = %d kJ from heat engine",Q2)
printf("\nQ3 = %d kJ to heat engine",-Q3)