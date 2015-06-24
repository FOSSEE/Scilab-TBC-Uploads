
//Variable declaration
k=0.0002                    //device parameter
Vt=4                        //thevinin voltage(V)   
Vdd=24                      //drain voltage(V)
Id0=3                        //drain current(mA)  

//Calculations
Vgs=(sqrt(Id0/k))+4   //as Id=k(Vgs-Vt)^2
Rd=-(Vgs-Vdd)/Id0         //as Vds=Vdd-IdRd and Vgs=Vds=7.87                        
k=0.0003                  //device parameter 

syms Id
expr = solve([Id**2-7.5*Id+13.7],[Id])
printf ("equation has 2 solutions")
disp(expr)                                    // putting value of k=0.0003 in eq of Id,
Id1=3.15                                    // we get Vgs=Vds=24-5.4Id and putting Vgs again in Id we get,
                                    // Id^2-7.5Id+13.7=0
                                    
Idchange=((Id1-Id0)/Id0)*100                                                    //changed Id(mA)

//Result
printf ("change in Id is %.1f %% increase",Idchange)
