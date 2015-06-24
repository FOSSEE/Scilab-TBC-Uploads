pathname=get_absolute_file_path('6.20.sce')
filename=pathname+filesep()+'6.20data.sci'
exec(filename)
R1_R2=sqrt((n2^2-1)/(n1^2-1));//ratio(R1/R2)
disp(R1_R2,"ratio of turn radius :R1/R2=sqrt((n2^2-1)/(n1^2-1))")
w1_w2=sqrt((n1^2-1)/(n2^2-1));//ratio(w1/w2)
disp(w1_w2,"ratio of turn rate :w1/w2=sqrt((n1^2-1)/(n2^2-1))")
printf("\Answer:\n")
printf("\n\Ratio of turn radius: %f \n\n",R1_R2)
printf("\n\Ratio of turn rate: %f m/s\n\n",w1_w2)

