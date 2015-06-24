clc;
dice=920;  //desity of ice in kg/m cube
dwater=1030;  //density of water in kg/m cube
vsub=dice/dwater;  //calculating percentage volume of iceberg that is submerged using relation:dice*g*v=dwater*g*vsub
disp(vsub*100,"Percentage of volume of submerged iceberg = ");  //displaying result.