//Example9.3
//calculate
//i)the steam lr. to be used in the calandria
//ii)heat transfer rate required
//iii) the steam requirement.
//given data
Wf=2000        //kg/h, feed rate
ci=8          //% initial conc.
cf=40          //% final conc.
ft=30         //C, feed temp.
vp=660        //mm Hg, vaccum pressure
ssp=8         // bar absolute, saturated steam pr.
//calculation
sr=Wf*(ci/100)  //kg/h, solid rate
Wp=sr/(cf/100)   //kg/h,concentrated product rate
ap=760-vp        //mm Hg, absolute pressure in the evaporator
bt=325          //K,boiling temp. of water
l_s=2380        //kj/kg, latent heat
R=8.303         //gas constant
w=40             //g,mass of solute
M=18           //g,molecular wt of solvent
W=60           //g,mass of the solvent
m=2000         //g,molecular wt of solute
dtb=(R*bt^2*w*M)/(l_s*W*m)     //C, boiling point elevation
bp=bt+dtb      //k,boiling point of 40% solution
dt=70        //C, from given data flux becomes maximum at a temp. drop =70 C
st=bp+dt     //K,saturation temp. of steam in the steam chest
Sp=2.15      // bar, from steam table, saturation lr. of steam at this temp.

sh=4.2       //kj/kg C, specific heat of product
rt=0         //C reference teml.
ef=sh*(ft-rt)  // kj/kg, enthalpy of the feed
ip=sh*(54-rt)  //kj/kg, enthalpy of the product
iv=2607        //kj/kg, enthalpy of vapour produced
//from eq 9.6
Wv=1600       //enthalpy of evaporation
q=Wp*ip+Wv*iv-Wf*ef   //kj/h, heat transfe rate required
hvp=2188      //kj/kg, heat of vaporization of saturated steam at 397 K
rs=q/hvp      //kg/h, rate of steam supply
printf("The steam pressure to be used in the calandria is %f bar(abs)\n",Sp);
printf("The heat transfer rate required is %f Kj/h\n",q);
printf("Rate of steam supply is %f kg/h",rs);