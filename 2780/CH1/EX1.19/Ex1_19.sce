clc
//to calculate velocity of the parcticle 
c=3*10^8 //light speed(m/s)
// we know that E(energy)=mc^2
// mo=rest mass
//E=3 moc^2=mc^2 or m=3 mo (given that total energy of the particle is thrice its rest energy)  
m=3 // relativistic mass 
//formula is v=c sqrt(1-(mo/m)^2)
v=sqrt(c^2*(1-(1/m)^2))
disp("velocity of the particle is v="+string(v)+"m/s")
