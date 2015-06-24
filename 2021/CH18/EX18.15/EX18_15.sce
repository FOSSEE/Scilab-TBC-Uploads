//Finding of Speed ,Power developed
//Given
P1=8000;
N1=90;
H1=25;
H2=15;
//To Find
N2=N1*(sqrt(H2)/sqrt(H1));
P2=(P1*(H2)^(3/2))/(H1)^(3/2);
disp("Speed ="+string(N2)+" rpm");
disp("Power Developed ="+string(P2)+" Kilo watts");
