
// determine the absolute pressure in the tank
clc
patom=47.2 // pressure of an atom 
pg=40 // pressure at 40kpa from table
pa=patom-pg
mprintf('\n absoulte pressure in the tank is %f kPa',pa)
