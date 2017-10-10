
//Variable declaration
lamda=0.065;    //wavelength(nm)
a=0.26;      //edge length(nm)
h=1;
k=1;
l=0;
n=2;

//Calculation
d=a/sqrt(h**2+k**2+l**2);      
x=n*lamda/(2*d);     
theta=asin(x);        //glancing angle(radian)
theta=theta*180/%pi;    //glancing angle(degrees)
theta_d=int(theta);       
theta_m=(theta-theta_d)*60;
theta_s=(theta_m-int(theta_m))*60;

//Result

printf('glancing angle is %2d degrees %2d minutes %2d seconds',theta_d,int(theta_m),int(theta_s))
printf('answer varies due to approximating off errors')