pathname=get_absolute_file_path('8_01.sce')
filename=pathname+filesep()+'8_01data.sci'
exec(filename)
h=Rb*V*cos(alpha);disp(h,"h=","h=Rb*V*cos(alpha)")
P=h^2/K;disp(P,"P=")
e=sqrt(1+2*(h^2/K^2)*((V^2/2)-(K/Rb)));disp(e,"e=","e=sqrt(1+2*(h^2/K^2)*((V^2/2)-(K/Rb)))")
C=-acosd((P/Rb-1)/e);
disp(C,"C=","C=-acosd((P/Rb-1)/e)");
disp("equals approx 1.056*10^7/(1+0.4654*cos(theta+9.46))","P/(1+e*cos(theta-C))","From the above values we can see equation of trajectory :")