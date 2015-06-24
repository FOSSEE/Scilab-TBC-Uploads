pathname=get_absolute_file_path('7_03.sce')
filename=pathname+filesep()+'7_03data.sci'
exec(filename)
A=[1,Awb*ab2;1,Awb*ab3];
B=[1,1];//coefficient of moment coefficient about aerodynamic center
C=[Awb*ab2,Awb*ab3];//coefficient of h-hac
D=[-0.01,0.05];
dh=det([B;D])/det(A);//difference between location of aerodynamic center and center of gravity
hac=h-dh;
Cmac=det([D;C])/det(A)//moment coefficient about aerodynamic center
printf("\Answer:\n")
printf("\n\Location of aerodynamic center: %f\n\n",hac)
printf("\n\moment coefficient about aerodynamic center of wing-body : %f\n\n",Cmac)