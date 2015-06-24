//clc()
Pdryair = 101.3;//kPa
Pacetone = 16.82;//kPa
Nratio = Pacetone / (Pdryair - Pacetone);
mratio = Nratio * 58.048 / 29;// ( Macetone = 58.048, Mair = 29 )
macetone = 5;//kg ( given )
mdryair = macetone / mratio;
disp("kg",mdryair,"Minimum air required = ")