//(11.4)Using p–v–T data for saturated water, calculate at 100C (a) hg - hf, (b) ug - uf, (c) sg - sf. Compare with the respective steam table value.

//solution

//analysis
//For comparison, Table A-2 gives at 100C,
hgf =2257                                                                       //in kj/kg
ugf = 2087.6                                                                    //in kj/kg
sgf = 6.048                                                                     //in kj/kg.K
printf('from table, hg-hf = %f',hgf)
printf('\nfrom table, ug-uf = %f',ugf)
printf('\nfrom table, sg-sf = %f',sgf)

//(a)
T = 373.15                                                                      //in kelvin
//If we plot a graph between temperature and saturation pressure using saturation pressure–temperature data from the steam tables, the desired slope is:
delpbydelT = 3570                                                               //in N/(m^2.K)

vg = 1.673                                                                      //in m^3/kg
vf = 1.0435e-3                                                                  //in m^3/kg
//from the Clapeyron equation
hgf = T*(vg-vf)*delpbydelT*10^-3                                                //in kj/kg

printf('\n\npart(a)using Clapeyron equation, hg-hf = %f',hgf)
//(b)
psat = 1.014e5                                                                  //in N/m^2
hgf = 2256                                                                      //can be obtained using IT software in kj/kg
ugf = hgf - psat*(vg-vf)/10^3                                                   //in kj/kg
printf('\npart(b)ug-uf = %f',ugf)
//(c)
sgf =hgf/T                                                                      //in kj/kg.K         
printf('\npart(c)sg-sf = %f',sgf)











