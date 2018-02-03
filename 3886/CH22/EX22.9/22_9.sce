//Uniform bar
//refer fig. 22.15(a),(b),(c),(d),(e) and (f)
beta=atand(0.6928/1.7856)  //degree
//aG=alpha*sqrt((1.7856^2)+(0.6928^2))  
I=(300*1.6^2)/(12*9.81)  
//Equating
alpha=((300*0.6928)/(82.3160))  //rad/sec^2
//Taking horizontal components of the forces
NB=(300*1.7856*2.5249)/(9.81*cosd(45))  //N
//Taking vertical components of the forces
NA=(300)-(194.98*sind(45))+((300*0.6928*2.5249)/(9.81))  //N (Printing mistake in text book)
printf("\nNA=%.2f N\nNB=%.2f N\nalpha=%.2f rad/sec^2",NA,NB,alpha)
