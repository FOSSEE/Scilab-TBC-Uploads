TP=746;//Total pressure of gas at 298K in mm of Hg//
PP=24;//Partial pressure of Water vapour at 298K in mm of Hg//
PPG=TP-PP;//partial pressure of gas at 298K in mm of Hg//
printf('partial pressure of dry gas at 298k=%fmm of Hg',PPG);
V=200;//Volume occupied by gas at 298K in millilitres//
P1=760;
V1=(PPG*V)/P1;//Volume of dry gas at a pressure of 760mm Hg//
printf('\nVolume of dry gas at pressure 760mm of Hg=V1=%fml',V1);
