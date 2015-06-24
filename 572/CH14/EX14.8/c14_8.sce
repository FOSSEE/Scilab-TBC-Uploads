//(14.8)  Consider an equilibrium mixture at 2000K consisting of Cs, Cs+, and e-, where Cs denotes neutral cesium atoms, Cs+ singly ionized cesium ions, and e- free electrons. The ionization-equilibrium constant at this temperature for
//    Cs <--> Cs+ + e-
//is K = 15.63. Determine the pressure, in atmospheres, if the ionization of Cs is 95% complete, and plot percent completion of ionization versus pressure ranging from 0 to 10 atm.



//solution
//The ionization of cesium to form a mixture of Cs, Cs+, and e- is described by
//Cs  ---->  (1-z)Cs + zCs+ + Ze-

K = 15.63
z = .95
pref =1                                                                         //in atm
p = pref*K*((1-z^2)/z^2)
printf('the pressure in atm if the ionization of CS is 95 percent complete is:  %f',p)

x = linspace(0,10,100)
for i = 1:100
    y(1,i) = 100*sqrt(1/(1+x(1,i)/K))
end
plot(x,y)
xtitle("","p(atm)","z(%)")