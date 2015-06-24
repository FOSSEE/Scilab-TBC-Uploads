pathname=get_absolute_file_path('6_08.sce')
filename=pathname+filesep()+'6_08data.sci'
exec(filename)
a=atand(1/L_D);disp(a,"a=","tan(a)=1/(L/D)","minimum glide angle a:")
R=H*L_D;disp(R,"R=","R=H*L/D","maximum range along ground :")
printf("\Answer:\n")
printf("\minimum glide angle: %f degree\n",a)
printf("\n\maximum range covered along ground: %f m\n\n",R)