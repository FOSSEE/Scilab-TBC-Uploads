//Aerodynamic and Radius//
pathname=get_absolute_file_path('9.09.sce')
filename=pathname+filesep()+'9.09-data.sci'
exec(filename)
//Reynolds number:
//Value of wD/2V:
W=0.5*N*D/1000/V*2*%pi/60
Red=V*D/v;
//For this value, CL is obtained as:
CL=0.3;
//Aerodynamic lift(in N):
FL=%pi/8*CL*(D/1000)^2*d*V^2;
//Radius of curvature of the path in the vertical plane(in m) with topspin:
Rts=V^2/(g+FL/(m/1000));
//Radius of curvature without topspin(in m):
Rwts=V^2/g;
printf("\n\nRESULTS\n\n")
printf("\n\nAerodynamic lift acting on the ball:%.3f N\n\n",FL)
printf("\n\nRadius of curvature of the path when ball has topspin:%.3f m\n\n",Rts)
printf("\n\nRadius of curvature of the path when ball has topspin: %.3f m\n\n",Rwts)
