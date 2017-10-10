clc
//Example 18.5
//Design using lewis equation

P=5e3
N=900
phi=20
G=3
//Assuming a standard module of 1 mm
m=1

Dp=80
Np=Dp/m
Sp=200e6

Ng=G*Np
Dg=m*Ng
Sg=150e6

printf('A standard module of 1 mm has been assumed.\n')
printf('Based on the number of teeth of gear and pinion, and the corresponding form factors, gear is weaker.\n')
printf('\typ=0.139 \t Syp=200*0.139 =27.8 \n\tyg=0.148 \t Syg=150*0.148 =22.2 \n\n')

Mt=(P*60)/(2*%pi*N)
F=(2*Mt)/(Dp*1e-3)
yg=0.148
k=4

//Putting the value of yg in Lewis Equation
m_new=sqrt(F/(Sg*k*(%pi^2)*yg))
printf('The revised module is %0.3f mm\n',m_new*1e3)
printf('Taking a standard module of 1.25 mm,\n')
m_new=1.25

Np=Dp/m_new
Ng=Dg/m_new

printf('New number of teeth:\n\tNp=%d\typ=0.135 and\n\tNg=%d\tyg=0.147\n\n',Np,Ng)
printf('Using the new module in lewis equation to check for safety:\n')
//Using the m_new in the lewis equation to check for safety,
aa=1/((m_new^2)*0.147)
bb=(Sg*k*(%pi^2))/F

if aa<bb
   printf('The design is safe\n\n')
else
   printf('The design will fail\n\n')
end

//Face width
b=k*%pi*m_new
printf('Face width of gear is %0.3f mm\n',b)
printf('The width is standardized to 16 mm')

//End of programme