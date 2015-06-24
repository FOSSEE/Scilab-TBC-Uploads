// Chapter 11_ Metal-Oxide-Semiconductor Field Effect Transistor:Additional Concepts
//Caption_Radition and hot electron effect
//Ex_6//page 535
tox=500*10^-8   //oxide thickness
p=0.2    //20% are trapped at oxide semiconductor surface
N=10^18    //electron hole pair
e=1.6*10^-19
eps_ox=3.9*8.85*10^-14
ni=1.5*10^10     //intrinsic carrier concentration
Nh=N*tox    //areal density of holes
Qss=Nh*p    //trapped surface charge density
Cox=eps_ox/tox
delVt=-Qss*e/Cox
printf('The threshold voltage shift due to radiation induced oxide charge trapping is %1.2f V',delVt)
