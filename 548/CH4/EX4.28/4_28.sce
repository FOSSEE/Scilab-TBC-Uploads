pathname=get_absolute_file_path('4_28.sce')
filename=pathname+filesep()+'4_28data.sci'
exec(filename)
Ds=q*S*0.074/Re^0.2;disp(Ds,"Ds=","Ds=q*S*0.074/Re^0.2","turbulent drag over complete area(A+B)");
Da=q*A*0.074/Ret^0.2;disp(Da,"Da=","Da=q*A*0.074/Ret^0.2","turbulent drag over area A");
disp(Ds-Da,"Db=","turbulent drag over area B Db:");Db=Ds-Da;
Dl=q*A*1.328/Ret^0.5;disp(Dl,"Dl=","Dl=q*A*1.328/Ret^0.5","laminar drag over area A");
Dn=Db+Dl;disp(Dn,"Dn=","Dn=Db+Dl","Net drag Dn")
printf("\Answer:\n")
printf("\n\Skin friction Drag over wings of biplane(4 surfaces): %f N\n\n",4*Dn)
