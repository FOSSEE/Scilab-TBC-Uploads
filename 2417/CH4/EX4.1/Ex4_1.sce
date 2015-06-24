//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 4.1\n\n\n");
// Chapter 4 : The Second Law Of Thermodynamics
// Problem 4.1  (page no. 148) 
// Solution

//given data
t1=1000;  //(unit:fahrenheit) //Source temperature
t2=80;   //(unit:fahrenheit) //Sink temperature
//solution
//converting temperatures to absolute temperatures;
T1=t1+460; //Source temperature //Unit:R
T2=t2+460; //Sink temperature //Unit:R

printf("Solution for (a)\n");
ans=((T1-T2)/T1)*100;//(ans in %)  //Efficiency of the engine
printf("Efficiency of the engine is %f percentage\n\n",ans);

printf("Solution for (b)\n");
T1=2000+460; //Source temperature //Unit:R
T2=t2+460;  //Sink temperature //Unit:R
ans=((T1-T2)/T1)*100;//(ans in %) //Efficiency of the engine
printf("When the upper tempretrature is increased upto certain ,Efficiency of the engine is %f percentage \n\n",ans);

printf("Solution for (c)\n");
T1=t1+460; //Source temperature //Unit:R
T2=160+460;  //Sink temperature //Unit:R
ans=((T1-T2)/T1)*100;//(ans in %) //Efficiency of the engine
printf("When the lower tempretrature is increased upto certain ,Efficiency of the engine is %f percentage \n\n",ans);
