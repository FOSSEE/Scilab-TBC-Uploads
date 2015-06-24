
//Variable Declaration
w=0.982  //rate of regression of nodes from Example 2.5(deg/day)
W=-2.903 //rate of rotation of line of apsides from Example 2.5)deg/day)
n=14.23304826  //Mean Motion(1/day)
W0=113.5534   //Argument of perigee(deg)
w0=251.5324   //Right ascension of the ascending node(deg)

//Calculation
PA=1/n   //Period 
w=w0+w*PA  //New value of rate of regression of nodes(deg)
W=W0+W*PA  //New Value of rate of rotation of line of apsides(deg)

//Result
printf("New value of rate of regression of nodes is: %.3f deg",w)
printf("\nNew value of rate of rotation of line of apsides is : %.3f deg",W)
