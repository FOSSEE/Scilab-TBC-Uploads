//Initialisation of variables
clc
v=3e9//cms per second
X=.06//e.s unit
R=300//cms
//(m*v^2/r)=X*e
electronbymass=v^2/(R*X)
printf('e/m ratio is %e esu \n',electronbymass)
