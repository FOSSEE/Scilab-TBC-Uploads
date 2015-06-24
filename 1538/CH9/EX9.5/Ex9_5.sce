//example-9.5
//page no-280
//given
//stress
sigmamean=70  //MPa
//stress range
sigmarange=210  //MPa
//as we know that
//sigmamean=(sigmamax+sigmamin)/2
//from this we get
//sigmamax+sigmamin=140    -----------(1)
//also
//sigmarange=sigmamax-sigmamin
//so we get
//sigmamax-sigmamin=210  ----------(2)
//solving 1 and 2
//we get
sigmamax=(140+210)/2   //MPa
//and
sigmamin=140-sigmamax  //MPa
//stress ratio
R=sigmamin/sigmamax
//stress ranges from sigmamin to sigmamax
//so total sum will be
totalsum=-sigmamin+sigmamax  //MPa
printf ("the maximum and minimum stresses are %d MPa and %d MPa resp\n, stress rstio is %f\n and totalsum is %d MPa",sigmamax,sigmamin,R,totalsum)
