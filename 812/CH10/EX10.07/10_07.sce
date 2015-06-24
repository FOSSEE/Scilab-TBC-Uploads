//Comparison of head//
pathname=get_absolute_file_path('10.07.sce')
filename=pathname+filesep()+'10.07-data.sci'
exec(filename)
//Volume flow rate(in gpm) at shut off condition for N2:
Q2so=N2/N1*Q1so
//Volume flow(in gpm) rate at best efficiency for N2:
Q2be=N2/N1*Q1be
//Relation between pump heads:
head_relation=(N2/N1)^2
//Head(in feet) at shut off condition for N2:
H2so=(N2/N1)^2*H1so
//Head(in feet) at best efficiency condition for N2:
H2be=(N2/N1)^2*H1be
Q1=[Q1so Q1be];
Q2=[Q2so Q2be];
H1=[H1so H1be];
H2=[H2so H2be];
plot(Q1,H1,"-o")
plot(Q2,H2,"-*")
xtitle('Comparison of head for both conditions','Volume Flow Rate','Head') 
legend('1170','1750')
