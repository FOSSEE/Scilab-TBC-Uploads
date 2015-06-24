N0=15.3;//decay rate of Contemporary Carbon in disintegrations/min/gram//
N=2.25;//decay rate of 14C specimen in disintegrtions/min/gram//
thalf=5670;//half life of nuclide in years//
t=2.303*log(N0/N)*thalf/0.693;//Age of the specimen in years//
printf('Age of the specimen=t=%fyears',t);//here the answer given in textbook is actually wrong we get twice that of the answer which is shown through execution//
