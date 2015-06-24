//Variable declaration
Id=3              //drain current(mA)
Vds=12            //drain source voltage(V)
Vgs=-3            //gate source voltage(V)
Vdd=36            //drain voltage(V)
Vgg=12            //gate voltage(V)
Rg=12             //gate resistance(Mohms)

//Calculations
R1=(Rg*Vdd)/Vgg             //resistance(Mohms)
R2=(Rg*R1)/(R1-Rg)          //resistance(kohms)
Rs=(Vgg-Vgs)/Id             //resistance(kohms)
Rd=(Vdd-Vds-Id*Rs)/Id       //as Vdd-IdRd-Vds-IdRs
Vgs=-3.6                    //consider Vgs increases by 20%
Idnew=(Vgg-Vgs)/Rs          //new drain current(mA)

//Results
printf ("value of R1 : %.f MOhm , R2: %.f Mohms, Rs : %.f KOhm and Rd: %.f kohms",R1,R2,Rs,Rd)
printf ("new Id is %.2f mA",Idnew)
