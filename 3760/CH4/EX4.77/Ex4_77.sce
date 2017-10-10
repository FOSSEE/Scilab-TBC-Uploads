clc;
// Hopkinson's method gave following result for two identical dc shunt machines 
v=230; // line voltage
il=30; // line current excluding both field currents
ia=230; // motor armature current  
ifl1=4; ifl2=5;  // field currents 
ra=0.025; // armature current
// from fig 4.85
ig=ia-il; // generator armature current
la1=ig^2*ra; // armature circuit losses in generator
la2=ia^2*ra; // armature circuit losses in motor
pd=v*il; // power drawn from supply (excluding field loss)
wo=pd-la1-la2; // no load rotational losses for both machines
pg=v*ig; // generator outputk
tl=(wo/2)+v*ifl2+la1; // total losses for generator
ng=(1-(tl/(tl+pg)))*100; 
pi=v*(ia+ifl1); // input power for motor
tl=(wo/2)+v*ifl1+la2; // total losses for motor
nm=(1-(tl/pi))*100; 
printf('Motor efficiency is %f percent\n',nm);
printf('Generator efficiency is %f percent\n',ng);
// If both machine are assumed to have same efficiency then
n=sqrt(ig/ia)*100;
printf('Efficiency of machine is %d percent',n); 
