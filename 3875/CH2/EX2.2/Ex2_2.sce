clc;
clear;
V=1500 //volume of hall in m^3
Area_plastered_wall=112 //in m^2
Area_woodem_floor=130 //in m^2
Area_plastered_ceiling=170 //in m^2
Area_wooden_doors=20 //in m^2
Area_cushioned_chairs=120 //in m^2
Area_Audience=120 //in m^2


//Coefficient of Absorption (c)
c_plastered_wall=0.03 
c_woodem_floor=0.06 
c_plastered_ceiling=0.04 
c_wooden_doors=0.06 
c_cushioned_chairs=0.50 
c_Audience=0.4367 



//calculation 
Abs_plastered_wall=Area_plastered_wall*c_plastered_wall //in m^2 sabine
Abs_wooden_floor=Area_woodem_floor*c_woodem_floor //in m^2 sabine
Abs_plastered_ceiling=Area_plastered_ceiling*c_plastered_ceiling //in m^2 sabine
Abs_wooden_doors=Area_wooden_doors*c_wooden_doors //in m^2 sabine
Abs_cushioned_chairs=Area_cushioned_chairs*c_cushioned_chairs //in m^2 sabine
Total_absorption1 = Abs_plastered_wall+Abs_wooden_floor+Abs_plastered_ceiling+Abs_wooden_doors+Abs_cushioned_chairs //in m^2 sabine

//Case (i)
T1=(0.162*V)/Total_absorption1

//case (ii)
Abs_Audience=Area_Audience*c_Audience //in m^2 sabine when hall at full capacity 
Total_absorption2 = Abs_plastered_wall+Abs_wooden_floor+Abs_plastered_ceiling+Abs_wooden_doors+Abs_cushioned_chairs+Abs_Audience //in m^2 sabine
T2=(0.162*V)/Total_absorption2

mprintf("Reverbertion time when hall empty = %1.2f s\n",T1)
mprintf("Reverbertion time when hall at full capacity = %1.2f s",T2) //The answer provided in the textbook is wrong
