format ('v',6);
vb= [10*cos(%pi/4), -10*sin(%pi/4)]
vm= [-2*cos(%pi/4), -2*sin(%pi/4)]
vmg= vb+vm;
disp (vmg, 'Velocity of man with respect to ground:')
mod_vmg=(vmg(1,1)^2+vmg(1,2)^2)^.5;
dir= atand(vmg(1,2)/vmg(1,1))
disp( mod_vmg,'Absolute velocity of man is:' )
disp (dir,'Angle with east in radian:')