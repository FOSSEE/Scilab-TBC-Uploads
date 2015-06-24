//pathname=get_absolute_file_path('7.12.sce')
//filename=pathname+filesep()+'7.12-data.sci'
//exec(filename)
//Enthalpy at entrance(in kJ/kg):
h1=4142
//Enthalpy at exit(in kJ/kg):
h2=2585
//Availability of steam at entrance(in kJ/kg):
A1=1787
//Availability of steam at exit(in kJ):
A2=140
//Maximum work possible(in kJ/kg):
Wmax=A1-A2
//Actual work from turbine(in kJ/kg):
Wact=h1-h2
printf("\nRESULT")
printf("\nActual work = %d kJ/kg",Wact)
printf("\nMaximum possible work = %d kJ/kg",Wmax)