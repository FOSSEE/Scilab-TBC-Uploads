printf('Density is proportional to molecular weight');
printf('\nRelative density of O2 with respect to H2 is 32/2=16.');
t1=12;//time for certain volume of gas to stream through hole in mins//
p2=16;//Relative density of O2 w.r.t H2//
t2=15;//time for same volume(as gas) of oxygen to stream through hole in mins//
p1=((t1/t2)^2)*p2;//according to graham's law//
printf('\nRealtive density of gas to oxygen=p1=%f',p1);//here the answer given in textbook is wrongly printed the actual answer is the one we got here through execution// 
