clear
//variable declaration

Ea=70*1000              //Young's modulus of aluminium,N/mm^2
Es=200*1000             //Young's modulus of steel,N/mm^2

alphaa=(0.000011)  //expansion coefficient,/°C
alphas=(0.000012)  //expansion coefficient,/°C

Aa=600                  //Area of aluminium portion,mm^2
As=400                  //Area of steel, mm^2
La=(1.5)                  //length of aluminium portion,m
Ls=(3.0)                  //length of steel portion,m
t=18                           //temperature,°C

delta=(alphaa*t*La*1000)+(alphas*t*Ls*1000)      //mm

P=(delta)/(((La*1000)/(Aa*Ea))+((Ls*1000)/(As*Es)))

printf("\n P= %0.1f  N",P)
