Av=-10;
disp('Av=-(R2/R1)*(A*B/1+A*B), where A-differential gain and B=R1/R1+R2');
disp('When A*B&gt;&gt;1,Av=-(R2/R1)=Av1');
Av1=Av;
disp('abs(A)&gt;&gt;1+(R2/R1)=1+abs(Av1)');
A=1+abs(Av1);
disp('Because the cross over point occurs at a significantly higher frequency than the dominant frequency at 10Hz ');
disp('The phase angle of A is very close to -90degrees=%pi/2 radians');
disp('Using the j-notation the gain A at the crossover point is equal to %i*11');
A=%i*11;
disp('1+abs(Av1)=(R1+R2)/R1');
Av=(-10)*(A/(1+abs(Av1)))/(1+(A/(1+abs(Av1))));
Av2=abs(Av);
M=Av/Av2;
printf(" The closed-loop gain at the cross over point is thus reduced by a factor %f and therefore point corresponds to upper half-power frequency which is 90KHz",M)
disp('Therefore fh=90KHz, fl=0KHz');
fh=90;//in KHz
fl=0;//in KHz
disp('Bandwidth BW=fh-fl'); 
BW=fh-fl;
printf(" RESULTS:\n");
printf(" The closed-loop bandwidth is %d KHz",BW);