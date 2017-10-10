clear
//
//
//

//Variable declaration
lamda=1.3922;      //wavelength(angstrom)
n=1;
theta=14+(27/60)+(26/(60*60));   //glancing angle(degree)
M=58.454;          //molecular weight
rho=2163;          //density(kg/m^3)

//Calculation
theta=theta*%pi/180;    //angle(radian)
d=n*lamda/(2*sin(theta));   //lattice spacing(angstrom)
d_m=d*10^-10;        //lattice spacing(m)
N=M/(2*rho*d_m^3);     //avagadro number(mol/k-mole)

//Result
printf("\n lattice spacing is %0.4f angstrom",d)
printf("\n avagadro number is %0.4f *10^26 mol/k-mole",N/10^26)
printf("\n answer varies due to rounding off errors")
