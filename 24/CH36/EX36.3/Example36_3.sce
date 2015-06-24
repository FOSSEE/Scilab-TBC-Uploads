exec('degree_rad.sci', -1)

//Given that
Eo = 1  //(say)
E1 = Eo
E2 = Eo
E3 = Eo
phi1 = dtor(0)
phi2 = dtor(60)
phi3 = dtor(-30)

//Sample Problem 36-3
printf("**Sample Problem 36-3**\n")
Eh = E1*cos(phi1) + E2*cos(phi2) + E3*cos(phi3)
Ev = E1*sin(phi1) + E2*sin(phi2) + E3*sin(phi3)
Er = sqrt(Ev^2 + Eh^2)
theta = rtod(atan(Ev/Eh))
printf("The resultant electric field is E=%1.2f*Eo*sin(w*t + %1.2f)", Er, theta)