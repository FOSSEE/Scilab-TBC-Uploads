// example 2.1,page no.-24.
// program to calculate wavelength,phase velocity and wave impedence.
f=3*10^9;
mur=3;
muo=4*%pi*10^-7;
eipsilao=8.854*10^-12;
eipsilar=7;
mue=muo*mur;
eipsila=eipsilao*eipsilar;
Vp=sqrt(1/(mue*eipsila));
lamda=Vp/f;
eta=sqrt(mue/eipsila);
//Result
disp(Vp,'phase velocity in meter per second=')       // phase velocity.
disp(lamda,'wavelength in meter=')   // wavelength.
disp(eta,'wave impedence in ohm=')    // wave impedence.