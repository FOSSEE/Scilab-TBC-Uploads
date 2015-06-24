
//Variable Declaration
y=2000       //year
d=223.153    //day
n=1.002716   //mean motion(1/day)
w=272.5299   //rate of regression of nodes(degrees)
e=0.000352   //Eccentricity
W=247.9161   //Rate of regression of line of apsides(degrees)
M=158.0516   //Mean Anomaly at given time
JD00=2451543.5  //Julian days for Jan 0.0 2000

//Calculation

JD=JD00+d  //Julian days for given day
JDref=2415020   //Reference Julian days
JC=36525
T=(JD-JDref)/JC  //Time in julian Centuries
UT=d-223  //Universal Time, fraction of the day
GST=(99.6910+36000.7689*T+0.004*T**2)*3.142/180  //GST(radians)
UT=2*%pi*UT //Universal time converted to fraction of earth rotation (radians)

GST=(GST+UT)*180/3.1421
GST=(modulo(GST,360))//using fmod multiplr revolutions are removed (degrees)

v=M+2*e*M  //True Anomaly(degrees)

Pssmean=W+w+M-GST //longitude for INTELSAT(degrees)
Pssmean=modulo(Pssmean,360) //fmod removes multiple revolutions
Pss=w+W+v-GST//longitude for INTELSAT(degrees)
Pss=modulo(Pss,360)//fmod removes multiple revolutions

//Results
printf("The longitude of INTELSAT 805 is %.3f Degrees",Pss)

printf("The average longitude of INTELSAT 805 is %.3f Degrees",Pssmean)

// Note : Answers may be different because of rounding error. Please check by calculating all variables.
