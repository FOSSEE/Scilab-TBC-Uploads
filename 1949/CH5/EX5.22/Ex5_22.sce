
//Chapter-5,Example 5_22,Page 5-36
clc()

//Given Values:
a=25*10^-10               //width of well
delx=5*10^-10             //uncertainity in position of particle
n=1                       //ground state

//calculation:
x1=a/2
psi1=sqrt(2/a)*sin(n*%pi/a*x1)
P1=(psi1^2)*delx             //Probability of finding particle at distance of x1
printf('Probability of finding particle at a distance of x1 is =%.2f \n \n',P1)

x2=a/3
psi2=sqrt(2/a)*sin(n*%pi/a*x2)
P2=(psi2^2)*delx             //Probability of finding particle at distance of x2
printf(' Probability of finding particle at a distance of x2 is =%.2f \n',P2)
printf(' (There is print mistake in book). \n \n')

x3=a
psi3=sqrt(2/a)*sin(n*%pi/a*x3)
P3=(psi3^2)*delx             //Probability of finding particle at distance of x3
printf(' Probability of finding particle at a distance of x3 is =%.2f \n',P3)
