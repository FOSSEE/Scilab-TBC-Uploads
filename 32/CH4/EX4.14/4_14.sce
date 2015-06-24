//pathname=get_absolute_file_path('4.14.sce')
//filename=pathname+filesep()+'4.14-data.sci'
//exec(filename)
//Heat supplied(in kJ/s):
Qs=2000
//Temperature of source(in K):
Tso=1500
//Temperature at which heat is rejected(in K):
Tr=15+273
//Total heat received(in kJ/s):
Qt=3000
//Heat rejected(in kJ/s):
Qr=Qt-Qs
//Temperature of the sink(in K):
Ts=Qt/(Qs/Tso+Qr/Tr)
printf("\nRESULT\n")
printf("\nTemperature of the sink = %f K",Ts)