clear;
clc;
printf("\t\t\tExample Number 2.3\n\n\n");
// heat transfer through a composite wall
// illustration2.3
// solution

// 1. heat transfer through studs for unit depth
l = 0.0413;// [m] length of wood studs
b = 1.0;// [m] unit depth
A = l*b;// [square meter] area of studs for unit depth
hi = 7.5;// [W/square meter per degree celsius] convectional heat transfer coefficient
ho = 15;// [W/square meter per degree celsius] convectional heat transfer coefficient
Kb = 0.69;// [W/m per degree celsius] heat transfer coefficient of brick
Kgi = 0.96;// [W/m per degree celsius] heat transfer coefficient of gypsum inner sheath
Ki = 0.04;// [W/m per degree celsius] heat transfer coefficient of insulation
Kws = 0.1;// [W/m per degree celsius] heat transfer coefficient of wood stud
Kgo = 0.48;// [W/m per degree celsius] heat transfer coefficient of gypsum outer sheath
Rair = 1/(ho*A);// [degree celsius /W] convection resistance outside of brick
dx_b = 0.08;// [m] thickness of brick
dx_os = 0.019;//[m] thickness of outer sheet
dx_ws = 0.0921;// [m] thickness of wood stud
dx_is = 0.019;// [m] thickness of inner sheet
Rb = dx_b/(Kb*A);// [degree celsius /W] conduction resistance in brick
Ros = dx_os/(Kgi*A);// [degree celsius /W] conduction resistance through outer sheet
Rws = dx_ws/(Kws*A);// [degree celsius /W] conduction resistance through wood stud
Ris = dx_is/(Kgo*A);// [degree celsius /W] conduction resistance through inner sheet
Ri = 1/(hi*A);// [degree celsius /W] convection resistance on inside
Rt = Rair+Rb+Ros+Rws+Ris+Ri;// [degree celsius /W] total thermal resistance through the wood stud section
printf("total thermal resistance through the wood stud section is %f degree celsius /W",Rt);
// 2. heat transfer through insulation section 
A1 = 0.406-A;// [square meter] area of insulation section for unit depth
dx_ins = 0.0921;// [m] thickness of insulation
Rins = dx_ins/(Ki*A1);// [degree celsius /W] conduction resistance through insulation section
// five of the materials are same but resistance involve different area 
// i.e. (40.6-4.13) cm instead of 4.13 cm 
// so that each of the previous must be multiplied by a factor of (4.13/(40.6-4.13)) = 0.113 
Rt_ins = (Rair+Rb+Ros+Ris+Ri)*0.113+Rins;// [degree celsius /W] total resistance through insulation section 
printf("\n total thermal resistance through the insulation section is %f degree celsius /W",Rt_ins);
R_overall = 1/((1/Rt)+(1/Rt_ins));// [degree celsius /W] overall resistance for the section
// the value is related to overall heat transfer coefficient by 
// Q = U*A*dt = dt/R_overall 
// where A is area of total section
A_ = 0.406;// [square meter] area of total section
U = 1/(R_overall*A_);// [W/square meter degree celsius] overall heat transfer coefficient
// R value is somewhat different from thermal resistance and is given by
R_value = 1/U;// [degree celsius square meter/W] R value of system
printf("\n overall heat transfer coefficient is %f W/square meter per degree celsius",U);
printf("\n R value is %f square meter/W",R_value);
