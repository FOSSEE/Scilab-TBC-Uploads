//person throws a ball
//refer fig. 13.23
//(a) Up the plane
atheta=35  //degree
aalpha=atheta+20  //degree
//maximum range
aRangemax=((30*30)/(9.81*(cosd(20))^2))*(sind(2*55-20)-sind(20))  //m
//(b) Down the plane
//refer fig. 13.24
btheta=(90+20)/2  //degree
balpha=55-20  //degree
//maximum range  
bRangemax=((30*30)/(9.81*(cosd(-20))^2))*(sind(2*35+20)-sind(-20))  //m
printf("\nUp the plane\nMax Range=%.3f m",aRangemax)
printf("\nDown the plane\nMax Range=%.3f m",bRangemax)
