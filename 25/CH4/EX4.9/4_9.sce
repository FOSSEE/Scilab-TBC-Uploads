//example:-4.9,page no.-197.
//program to calculate the group velocity.
syms w c v;
B=sym('B');
ko=sym('ko');
kc=sym('kc');
ko=w/c;
B=sqrt(ko^2-kc^2);
v=diff(B,w);
vg=v^(-1);
vg=(c*B)/ko;
vp=w/B;
disp(vg,'group velocity=')
disp(vp,'phase velocity=')
disp('conclusion:-since B<ko,we have that vg<c<vp,which indicates that the phase velocity of a waveguide mode may be greater than the speed of light.but the group velocity will be lesser than the speed of light.')