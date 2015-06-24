//(11.3)  Evaluate the partial derivative (dels/delv)T for water vapor at a state fixed by a temperature of 240C and a specific volume of 0.4646 m3/kg. (a) Use the Redlich–Kwong equation of state and an appropriate Maxwell relation. (b) Check the value obtained using steam table data.

//solution

//part(a)
v = .4646                                                                       //specific volume in in m^3/kg
M = 18.02                                                                       //molar mass of water in kg/kmol
//At the specified state, the temperature is 513 K and the specific volume on a molar basis is
vbar = v*M                                                                      //in m^3/kmol
//From Table A-24
a = 142.59                                                                      //(m^3/kmol)^2 * K^.5
b = .0211                                                                       //in m^3/kmol

Rbar = 8314                                                                     //universal gas constant in N.m/kmol.K
T = 513                                                                         //in kelvin
delpbydelT = (Rbar/(vbar-b) + a/[2*vbar*(vbar+b)*T^1.5]*10^5)/10^3          //in kj/(m^3*K)

//by The Maxwell relation
delsbydelv = delpbydelT
printf('the value of delpbydelT in kj/(m^3*K) is:  %f ',delpbydelT)

//part(b)
//A value for (dels/delv)T can be estimated using a graphical approach with steam table data, as follows: At 240C, Table A-4 provides the values for specific entropy s and specific volume v tabulated below
T = 240                                                                         //in degree celcius
//at p =1 bar
s(1,1) = 7.9949                                                                 //in kj/kg.k
v(1,1) = 2.359                                                                  //in m^3/kg
//at p= 1.5 bar
s(2,1) = 7.8052                                                                 //in kj/kg.k
v(2,1) = 1.570                                                                  //in m^3/kg
//at p = 3 bar
s(3,1) = 7.4774                                                                 //in kj/kg.k
v(3,1) = .781                                                                   //in m^3/kg
//at p = 5 bar
s(4,1) = 7.2307                                                                 //in kj/kg.k
v(4,1) = .4646                                                                  //in m^3/kg
//at p =7 bar
s(5,1) = 7.0641                                                                 //in kj/kg.k
v(5,1) = .3292                                                                  //in m^3/kg
//at p = 10 bar
s(6,1) = 6.8817                                                                 //in kj/kg.k
v(6,1) = .2275                                                                  //in m^3/kg
plot(v,s)
xtitle("","Specific volume, m3/kg","Specific entropy, kJ/kg·K")
//The pressure at the desired state is 5 bar.The corresponding slope is
delsbydelv = 1                                                                  //in kj/m^3.K
printf('\n\nfrom the data of the table,delsbydelv = %f',delsbydelv)             












































