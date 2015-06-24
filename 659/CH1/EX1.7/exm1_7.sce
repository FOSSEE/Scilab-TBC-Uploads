//            Example 1.7
// SAMPLE PROGRAM 5: USE OF MATH FUNCTIONS

//Program using cosine function
angle=0;MAX=180;
printf("           Angle      Cos(angle)\n");
  while(angle<=MAX)
    x=(%pi/MAX)*angle;
    y=cos(x);            //Use of cosine function
    printf("%15d %13.4f\n",angle,y);
    angle=angle+10;
  end