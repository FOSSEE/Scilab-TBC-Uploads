//linear phase filters
z=%z
H1Z=((z^3)+2*(z^2)+2*z+1)/(z^3);
//from pole zero diagram its not a linear phase filter
H2Z=(z^4+4.25*z^2+1)/(z^4);
xset('window',1);
plzr(H2Z);
//from pole zero diagram and LPF
// characteristics its a linear phase filter
H3Z=((z^4+2.5*z^3-2.5*z-1)/(z^4));
xset('window',2);
plzr(H3Z);
//from pole zero diagram and LPF
// characteristics its a linear phase filter