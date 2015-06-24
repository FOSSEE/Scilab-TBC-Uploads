//Given that
dose = 3  //in J/kg
c = 4180  //in J.kg/K
m = 1  //(say)

//Sample problem 43-9
txt = mopen('Example43_9_result.txt','wt')
mfprintf(txt, '**Sample Problem 43-9**\n')
deltaT = (dose/m)/c
mfprintf(txt, 'The change in temprature of the body is %eK', deltaT)
mclose(txt)