//chapter 10
//example 10.11
//page 412
printf("\n")
printf("given")
Vee=20;Id=3*10^-3;Vds=9;Vbe=.7;Vb=0;
Ve=Vee-Vbe
Re=Ve/Id
Re=6.8*10^3;//satnadard value
Id=Ve/Re;
Idss=16*10^-3;Vgsoff=-8;
Vgs=Vgsoff*(1-sqrt(Id/Idss))
Vs=Vb-Vgs
Vrd=Vee-Vds-Vs
Rd=Vrd/Id