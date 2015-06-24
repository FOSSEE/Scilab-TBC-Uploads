Qacb = 84e03;
Wacb = 32e03;
Uba = Qacb-Wacb; // Ub-Ua
// Part (a)
Wadb = 10.5e03; 
Qadb = Uba+Wadb; 
disp("J",Qadb,"The heat flow into the system along the path adb");
// Part (b)
Wb_a = -21e03;
Uab = - Uba;
Qb_a = Uab+Wb_a;
disp("J",Qb_a,"The heat liberated along the path b-a is")
// Part (c)
Wdb = 0; // Constant volume
Wad = 10.4e03; 
Wadb = Wdb-Wad; 
Ud = 42e03;
Ua = 0;
Qad = Ud-Ua+Wad;
Qdb = Qadb-Qad; 
disp("J",Qdb,"and",Qad,"The heat absorbed in the path ad and db are")  
