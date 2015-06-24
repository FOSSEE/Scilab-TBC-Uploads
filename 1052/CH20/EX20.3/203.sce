clc;
//Example 20.3
//page no 270
printf("Example 20.3 page no 270 \n\n");
// a certain poorly ventilated room chemical stroage room has a ceiling fan
//inside this room bottle of iron(3) sulfide sits next to a bottle sulfuric acid  containg 1 lb H2SO4 in water
// an earthquake sends the botlles on the shelf crashing to the floor where bottles break and their contant mix and react to form iron(3) sulfate and hydrogen sulfide
//we have to calculate maximum H2S concentration that could be reached in the room
Mw_Fe2S3=208//mol. weight of Fe2S3
Mw_H2SO4=98//mol. weight of H2SO4
Mw_H2S=34//mol. weight of H2S
Mw_air=29//mol. weight of air
//balancing chemical reaction 
// from the stiochiometric of the reaction ,sulfuric acid is the limiting reagent
// 0.030 lbmol of Fe2S3 is required to react with 0.010 lbmol of H2SO4\
v_r=1600//volume of room,ft^3
n_H2SO4=0.010// lbmol of H2SO4
Stoi_c_H2SO4=3//stoichiometric coeff. of H2SO4
Stoi_c_H2S=3//stoichiometric coeff. of H2S
n_H2S=n_H2SO4*(Stoi_c_H2S/Stoi_c_H2SO4)//lbmol of H2S
printf("\n lbmol of H2S n_H2S=%f lbmol",n_H2S);
m_H2S=n_H2S*Mw_H2S//conversion of moles into mass of H2S
printf("\n mass of H2S m_H2S=%f lb",m_H2S);
//at 32 degF and i atm pressure an ideal gas occupies 359 ft^3 volume then,at 51 deg F occupies
T_r=51//temperature of air in the room
T_st=32//standard temperature
v_st=359//standard volume
printf("\n stand. temperature T_st=%f F\n temperature of air in room T_r=%f F\n stand. volume v_st=%f ft^3",T_st,T_r,v_st); 
V_a=v_st*(460+T_r)/(460+T_st)//volume of air
printf("\n volume of air at 51deg F V_a=%f ft^3",V_a);
//the final concentration of H2S in the room in ppm C_H2S
C_H2S=m_H2S*(V_a/Mw_air)*1e+6/(v_r)
printf("\n conc. of H2S in ppm C_H2S=%f ppm",C_H2S);
