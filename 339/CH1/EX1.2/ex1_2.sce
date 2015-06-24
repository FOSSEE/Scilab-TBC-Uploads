mu0=4*%pi*10^-7;
a=8*2.54*10^-5; //radius of copper wire
sigmac=64.5*10^6; //conductivity of copper
l=2*10^-2; //length of wire
rdc=l/(%pi*a*a*sigmac);
f1=100*10^6;
f2=2*10^9;
f3=5*10^9;
skindepth1=1/sqrt(%pi*mu0*f1*sigmac);
skindepth2=1/sqrt(%pi*mu0*f2*sigmac);
skindepth3=1/sqrt(%pi*mu0*f3*sigmac);
Lin1=(a*rdc)/(2*skindepth1*2*%pi*f1); //internal inductance
Lin2=(a*rdc)/(2*skindepth2*2*%pi*f2); //internal inductance
Lin3=(a*rdc)/(2*skindepth3*2*%pi*f3); //internal inductance
temp=log(2*l/a)/log(%e);
Lex=mu0*l*(temp-1)/(2*%pi); //external inductance
disp("metre",skindepth1,"Skin depth at f1");
disp("metre",skindepth2,"Skin depth at f2");
disp("metre",skindepth3,"Skin depth at f3");
disp("Henry",Lin1,"Internal inductance at f1");
disp("Henry",Lin2,"Internal inductance at f2");
disp("Henry",Lin3,"Internal inductance at f3");
disp("Henry",Lex,"External inductance");