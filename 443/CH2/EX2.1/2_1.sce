pathname=get_absolute_file_path('2_1.sce')
filename=pathname+filesep()+'2_1_data.sci'
exec(filename)
//net rate of heat transfer
IdQ=Q12+Q23+Q34+Q41
//net rate of work transfer
IdW=W12+W23+W34+W41
if IdQ==IdW then printf("The above cycle satisfies the first law of thermodynamics")
end
//Thermal efficiency
nth=IdW/(Q12+Q34)*100
//Change in internal energy in each proces
dU12=Q12-W12
dU23=Q23-W23
dU34=Q34-W34
dU41=Q41-W41
printf("\n\nRESULTS\n\n")
printf("\nnet rate of heat transfer:%f\n",IdQ)
printf("\nnet rate of work transfer:%f\n",IdW)
printf("\npower:%f\n",IdW)
printf("\nthermal efficiency:%f\n",nth)
printf("\nchange in internal energy in 1-2:%f\n",dU12)
printf("\nchange in internal energy in 2-3:%f\n",dU23)
printf("\nchange in internal energy in 3-4:%f\n",dU34)
printf("\nchange in internal energy in 4-1:%f\n",dU41)
