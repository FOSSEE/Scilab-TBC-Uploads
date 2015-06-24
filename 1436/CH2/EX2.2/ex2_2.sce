// Example 2.2, page no-116
clear
clc

//(a)
gamm=1000
d=35
dens_Hg=13.546
press_in_kg_cm=gamm*d*10^-4
press_in_mmHg=gamm*d/dens_Hg
press_in_mmHg=press_in_mmHg/10^3
printf("(a)\nThe pressure at depth of %d meters in a water tank=%.1f kg/cm^2 = %.2f*10^3 mmHg",d,press_in_kg_cm,press_in_mmHg)

//(b)
press_atm=1.03
abspress=press_in_kg_cm+press_atm
abspress_mmHg=press_in_mmHg*1000+760
abspress_mmHg=abspress_mmHg/1000
printf("\n(b)\nAbsolute Pressure= %.2f kg/cm^2 Abs = %.2f*10^3 mmHg Abs",abspress,abspress_mmHg)
