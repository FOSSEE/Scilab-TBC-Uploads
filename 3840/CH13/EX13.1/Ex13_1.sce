clear
//
//
//

//Variable Declaration
A=92.9          //absorption(m**2)
V=2265          //volume(m**3)

//Calculation
T1=0.161*V/A        //reverberation time of hall without audience(seconds)
T2=0.161*V/(A*2)    //reverberation time of hall with audience(seconds)

//Result
printf("\n reverberation time of hall without audience is %0.1f  seconds",T1)
printf("\n reverberation time of hall with audience is %0.3f  seconds",T2)
