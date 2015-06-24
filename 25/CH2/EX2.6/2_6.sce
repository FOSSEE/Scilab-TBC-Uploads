// example:-2.6,page no.-46.
// program to compute propagation constan,impedence,skin depth,reflection and transmission coefficient.
f=1*10^9;
omega=2*%pi*f;
sigma=5.813*10^7;  // for copper.
mue=4*%pi*10^-7;   // permeability in free space.
delta=sqrt(2/(mue*sigma*omega)); // skin depth.
gama=((1+%i)/delta);  //propagation constant.
eta=gama/sigma;  // impedence
etao=377;  //intrinsic impedence in free space.
tao=((eta-etao)/(eta+etao)); // reflection coefficient.
t=(2*eta)/(eta+etao);  //transmission coefficient.
// result
disp(delta,'skin depth in meter=')
disp(gama,'propagation constant=')
disp(eta,'intrinsic impedence in ohm=')
disp(tao,'reflection coefficient=')
disp(t,'transmission coefficient=')