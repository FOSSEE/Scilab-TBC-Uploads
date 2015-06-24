exec ("Gravitation.sci",-1)

//Given that
Vi = 1.2 * 10^4 //in m/sec
d = 10*Re;
m = 10 //let say it will mass cancel out later

//Sample Problem 5
printf("**Sample Problem 5**\n")
//we know that E(initial) = E(final)
//=> Ki + Ui = Kf + Uf
//K = .5*m*Vi*Vi (Kinetic Energy)
//U = gravitational potential (Potential Energy)
Ki = .5*m*Vi*Vi; 
Ui = GPotential(m,Me,d);
Uf = GPotential(m,Me,Re);
Kf = Ki + Ui -Uf;
Vf = sqrt(2*Kf/m);
printf("The final velocity of the asteroid is equal to %e m/sec", Vf)