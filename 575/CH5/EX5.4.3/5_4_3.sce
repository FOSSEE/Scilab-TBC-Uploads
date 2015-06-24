clc
pathname=get_absolute_file_path('5_4_3.sce')
filename=pathname+filesep()+'543.sci'
exec(filename)
printf("All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
disp("Applying newton corrections for Hydrogen,")
TcaH2=TcH2+8
PcaH2=PcH2+8
Tcbar=yH2*TcaH2 + yN2*TcN2
Pcbar=yH2*PcaH2 + yN2*PcN2
Trbar=T/Tcbar
Prbar=P/Pcbar
printf(" \n Trbar=%f",Trbar)
printf(" \n Pcbar=%f",Pcbar)
Zm=1.86
printf(" \n From the graph, Zm=%f",Zm)
Vcap=Zm*R*T/P
printf(" \n Specific Volume of Mixture= %f L/mol",Vcap)