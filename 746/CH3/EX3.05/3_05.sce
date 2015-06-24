//force and pressure//
pathname=get_absolute_file_path('3.05.sce')
filename=pathname+filesep()+'3.05-data.sci'
exec(filename)
//Net force on the gate(in kN):
Fr=d*g*w*(D*L+L^2/2*sind(theta))
//Centre of pressure:
//Calculation for y coordinate:
   yc=D/sind(theta)+L/2
   //Area(in m^2):
   A=L*w
   //Moment of inertia of rectangular gate(in m^4):
   Ixx=w*L^3/12
   //y coordinate(in m):
   y=yc+Ixx/A/yc
//Calculation for x coordinate:
   Ixy=0
   xc=w/2
   //x coordinate(in m):
   x=xc+Ixy/A/xc
printf("\n\nRESULTS\n\n")
printf("\n\nNet force on the gate: %f kN\n\n",Fr/1000)
printf("\n\nCoordinate of centre of pressure:(%0.1f,%0.1f)\n\n",x,y)
       
      
