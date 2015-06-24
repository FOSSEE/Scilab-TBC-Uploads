clc;
V=0.01; // Volume of water in a rigid vessel in m^3
m=4.5; // Mass of water+ steam in a rigid vessel in kg
T=35; // Temperature of water in a rigid vessel in degree celcius
// (a)      
v=V/m; // specific volume of water
// From steam table
vf=0.001006; vg=25.22; // specific volume in m^3/kg
x=(v-vf)/(vg-vf); // Quality of steam
x1=1-x; // Quality of water
mg=x*m; // Mass of steam
mf=x1*m; // Mass of water
disp ("kg",mf,"Mass of water in a rigid vessel = ","kg",mg,"Mass of steam in a rigid vessel = ",x1,"Quality of water in a rigid vessel = ",x,"Quality of steam in a rigid vessel = ","  (a)   ");
// (b)          
vc=0.003155; //  Crictical volume for water in m^3/kg
disp ("The level of liquid water will rise in the vessel. Since v < vc and refer figure 3.21","  (b)   ");
// (c)  
disp ("The final temperature after heating is 370.04 oC.  Because it is constant volume process and refer figure 3.21","  (c)  ");
//  (d)   
m1=0.45; // Mass of water in kg
v1=V/m; // specific volume of water
disp ("Level of liquid drops to bottom (v1 > vc).  Temperature on reaching saturation state is 298.5 oC and refer figure 3.21", "  (d)  ");
