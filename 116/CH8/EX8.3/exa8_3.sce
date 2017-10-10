  

 
//Example 8.3
 
//Page 393
 
//Refer to table 8.1 on page 392, also to figure 8.6 on page 391
 
smf=16

smf=16//dispersion co-efficient of SMF at 1550nm 
 
sw=0.4//spectral width of the source
 
BDP=[250/(smf*sw)]//assuming line code as NRZ

disp('The BDP of the DS SMF system is determined as')

smf=3.5//dispersion co-efficient of DS SMF at 1550nm

BDP=[250/(smf*sw)]//assuming line code as NRZ 

//Result
 
//BDP = 39 Gbps=km (SMF)
 
//BDP = 179 Gbps-km (DS SMF)
 