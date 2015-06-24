//pathname=get_absolute_file_path('6.05.sce')
//filename=pathname+filesep()+'6.05-data.sci'
//exec(filename)
//Boiling point(in°C):
Tb=110
//From steam table:
//Pressure at which it boils(in kPa): 
p= 143.27
//Boiling point at this depth = Tsat at 138.365
//From steam table this temperature(in °C): 
Tsat= 108.866
//Pressure at 50 cm depth(in kPa):
p1=p-9.81*0.50
printf("\nRESULT\n")
printf("\nBoiling point = %f °C",Tsat)