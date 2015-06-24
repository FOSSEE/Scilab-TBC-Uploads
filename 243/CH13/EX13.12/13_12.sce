//Example No. 13_12
//Milne-Simpson Method using modifier
//Pg No. 453
clear ; close ; clc ;

deff('F = f(y)','F = -y^2 ')
x = [ 1 ; 1.2 ; 1.4 ; 1.6 ] ;
y = [ 1 ; 0.8333333 ; 0.7142857 ; 0.625 ] ;
h = 0.2 ;

for i = 1:2
    yp = y(i) + 4*h*( 2*f( y(i+1) ) - f( y(i+2) ) + 2*f( y(i+3) ) )/3
    fp = f(yp) ;
    yc = y( i+2) + h*(f( y(i+2) ) + 4*f( y(i+3) ) + fp )/3 ;
    Etc = -(yc - yp)/29
    y(i+4) = yc + Etc
    mprintf('\n y%ip = %f\n f%ip = %f \n y%ic = %f \n Modifier Etc = %f \n Modified y%ic = %f \n',i+3,yp,i+3,fp,i+3,yc,Etc,i+3,y(i+4))
end
exactanswer = 0.5 ;
err = exactanswer - y(6) ;
disp(err,'error = ')