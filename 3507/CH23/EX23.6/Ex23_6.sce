//chapter23
//example23.6
//page515

Vm=240 // V
v=180 // V

// figure given is for understanding purpose only. It is not required to solve the example

// SCR remains off till it reaches 180 V i.e. forward breakdown voltage

// since v=Vm*sin(theta), we get

theta=asin(v/Vm) // firing angle in terms of degrees

// since theta=314*t, we get

t=theta/314 // seconds

printf("off duration of SCR = %.3f ms \n",t*1000) //multiply t by 1000 to display time in milliseconds
