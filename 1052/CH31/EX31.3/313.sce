clc;
//Example 31.3
//page no 493
printf("Example 31.3 page no 493\n\n");
//friction factor for smooth tubes can be approximated by
//f = 0.079*R_e^(-1/4),if 2000< R_e<2e-5
// average velocity in the system ,involving the flow of water at 60 deg F is given by 
//v =sqrt(2180/(213.4R_e^(-1/4) + 10), flow of water at 60 deg F
//R_e=12168v,putting this value and by simplifying we get
v=poly(0,'v');
f=213.5*v^2 +105.03*v- 22896.08*v
//df=derivat(213.5*v^2 +105.03*v- 22896.08*v)
df=- 22791.05 + 427*v 
v1=5
f1=213.5*v1^2 +105.03*v1- 22896.08*v1// value of f at v=5
df1=- 22791.05 + 427*v1//value of df at v=5
v2=v1-(f1/df1)
//by iteration we get values of v3,v4,v5,v6
//at v6 result converges
v6=10.09
printf("\n v6=%f ft/s ",v6);
