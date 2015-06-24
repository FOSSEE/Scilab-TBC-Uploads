clc
disp("example 2.7")
md=40;cf=0.5;uf=0.8;//maximum demand in MW;capacity factor;utility factor
disp("(a)")
lf=cf/uf;  //load factor is ratio of capacity factor to the utility  factor
printf("load factor = capacity factor/utilisation factor =%f",lf)
disp("(b)")
pc=md/uf;  //plant capacity is ratio of maximum demand to utility factor
printf("plant capacity = maximum demand/utilisation factor =%dMW",pc)
disp("(c)")
rc=pc-md;  //reserve capacity is plant capacity minus maximum demand 
printf("reserve capacity =%dMW",rc)
disp("d")
printf("annual energy production =%dMWh",md*lf*8760)

