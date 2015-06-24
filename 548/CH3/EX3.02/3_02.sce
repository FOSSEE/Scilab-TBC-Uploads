pathname=get_absolute_file_path('3_02.sce')
filename=pathname+filesep()+'3_02data.sci'
exec(filename)
printf("\Answer:\n")
printf("\n\pressure altitude: %f Km\n\n",P1)
printf("\n\ temperature altitude: %f Km\n\n",T1)
printf("\n\density altitude: %f Km\n\n",D1)

