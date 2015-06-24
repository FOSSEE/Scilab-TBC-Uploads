exec('degree_rad.sci', -1)

//Given that
Vs = 1482  //in m/s
Vw = 343  //in m/s

//Sample Problem 18-1
printf("**Sample Probelm 18-1**\n")
//deltaT = d/V = D*sin(theta)/V
//D*sin(90)/Vs = D*sin(theta)/Vw
theta = rtod(asin(Vw/Vs))
printf("The actual angle at which source is present, is %fdegree", theta)