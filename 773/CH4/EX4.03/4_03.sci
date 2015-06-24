//laplace//
printf("since S2 is the referance stator winding , Es2=KVcos0 \n where Es2 & Er are rms voltages \n')
k=1
Theta=60;
disp(Theta,"Theta=")
V=28;
disp(V,"V(applied)=")
printf("Es2=V*cos(Theta) \n")
Es2=k*V*cos(Theta*(%pi/180));
disp(Es2,"Es2=")
printf("Es1=k*V*cos(Theta-120)\n")
Es1=k*V*cos((Theta-120)*(%pi/180)); // Given Theta=60 in degrees
disp(Es1,"Es1=')
printf("Es3=k*V*cos(Theta+120) \n")
Es3=k*V*cos((Theta+120)*(%pi/180));
disp(Es3,"Es3=')
printf("Es31=sqrt(3)*k*Er*sin(Theta)")
Es31=sqrt(3)*k*V*sin(Theta*(%pi/180));
disp(Es31,"Es31=')
printf("Es12=sqrt(3)*k*Er*sin((Theta-120)")
Es12=sqrt(3)*k*V*sin((Theta-120)*(%pi/180));
disp(Es12,"Es12=')
printf("Es23=sqrt(3)*k*Er*sin((Theta+120)")
Es23=sqrt(3)*k*V*sin((Theta+120)*(%pi/180));
disp(Es23,"Es23=')

